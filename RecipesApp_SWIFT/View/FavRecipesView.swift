//
//  FavRecipesView.swift
//  RecipesApp
//
//  Created by Marija Debelic on 04.12.2023..
//

import SwiftUI

struct FavRecipeView: View {
    @EnvironmentObject var favoriteViewModel: FavoriteViewModel

    var body: some View {
        NavigationView {
            if favoriteViewModel.favoriteRecipes.isEmpty {
                Text("You have not saved any favorite recipes!")
                    .padding()
                    .navigationTitle("Favorites")
            } else {
                List {
                    ForEach(favoriteViewModel.favoriteRecipes) { recipe in
                        VStack(alignment: .leading) {
                            Text(recipe.name)
                            // Display other recipe details as needed
                        }
                    }
                }
                .navigationTitle("Favorites")
            }
        }
        .navigationViewStyle(.stack)
        .onAppear {
            favoriteViewModel.fetchFavoriteRecipes()
        }
    }
}
