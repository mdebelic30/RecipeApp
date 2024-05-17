//
//  CategoryDetailView.swift
//  RecipesApp
//
//  Created by Marija Debelic on 09.12.2023..
//

import SwiftUI

struct CategoryDetailView: View {
    let category: String
    @State private var favoriteRecipes: Set<RecipeModel> = Set()
    @State private var showAlert = false
    @State private var alertMessage = ""
    @ObservedObject var favoriteViewModel = FavoriteViewModel()

    var body: some View {
        let categoryImages: [String: String] = [
            "Breakfast": "pancakes",
            "Lunch": "pasta",
            "Dinner": "mac",
            "Dessert": "cake"
        ]
        
        ScrollView {
            VStack(spacing: 20) {
                if let imageName = categoryImages[category] {
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250, height: 250)
                        .cornerRadius(20)
                        .shadow(color: Color.black.opacity(0.3), radius: 4, x: 0, y: 4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                        )
                } else {
                    Image(systemName: "photo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250, height: 250)
                        .cornerRadius(20)
                        .shadow(color: Color.black.opacity(0.3), radius: 4, x: 0, y: 4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                        )
                }
                
                ForEach(filteredRecipes(), id: \.id) { recipe in
                    VStack {
                        RecipeDetailView(recipe: recipe, isFavorite: self.favoriteRecipes.contains(recipe)) {
                            if self.favoriteRecipes.contains(recipe) {
                                self.favoriteRecipes.remove(recipe)
                                self.alertMessage = "Removed from favorites"
                            } else {
                                self.favoriteRecipes.insert(recipe)
                                self.alertMessage = "Added to favorites"
                            }
                            self.showAlert = true
                        }
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
                    }
                    .padding()
                }
            }
            .padding()
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Favorite"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
        }
        .navigationBarTitle(category)
    }
    
    func filteredRecipes() -> [RecipeModel] {
        switch category {
            case Category.breakfast.rawValue:
                return [pancakeRecipe]
            case Category.lunch.rawValue:
                return [pastaRecipe]
            case Category.dinner.rawValue:
                return [macRecipe]
            case Category.dessert.rawValue:
                return [cakeRecipe]
            default:
                return []
        }
    }
}

