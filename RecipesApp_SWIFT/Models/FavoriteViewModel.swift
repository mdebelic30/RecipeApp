//
//  FavViewModel.swift
//  RecipesApp
//
//  Created by Marija Debelic on 07.12.2023..
//

import SwiftUI

final class FavoriteViewModel: ObservableObject {
    
    @Published var favoriteRecipes: [RecipeModel] = []
    
    let defaults = UserDefaults.standard
    
    init() {
        let data = defaults.data(forKey: keyFavorites)
        if (data != nil) {
            favoriteRecipes = try! JSONDecoder().decode([RecipeModel].self, from: data!)
        }
        
    }
    

}

extension FavoriteViewModel {
    func addRecipeToFavorites(recipe: RecipeModel) {
        favoriteRecipes.append(recipe)
        let data = try! JSONEncoder().encode(favoriteRecipes)
        defaults.set(data, forKey: keyFavorites)
    }
    
    func removeRecipeFromFavorites(recipe: RecipeModel) {
        if let index = favoriteRecipes.firstIndex(of: recipe) {
            favoriteRecipes.remove(at: index)
        }
        let data = try! JSONEncoder().encode(favoriteRecipes)
        defaults.set(data, forKey: keyFavorites)
    }
    func saveFavoriteRecipes() {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(favoriteRecipes) {
            UserDefaults.standard.set(encoded, forKey: "favoriteRecipes")
        }
    }
    func fetchFavoriteRecipes() {
        if let savedFavoritesData = UserDefaults.standard.data(forKey: "favoriteRecipes") {
            let decoder = JSONDecoder()
            if let savedFavorites = try? decoder.decode([RecipeModel].self, from: savedFavoritesData) {
                favoriteRecipes = savedFavorites
            }
}
    }
}
