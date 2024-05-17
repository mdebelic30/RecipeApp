//
//  APIManager.swift
//  RecipesApp
//
//  Created by Marija Debelic on 07.12.2023..
//

import Foundation
import Alamofire

class APIManager: ObservableObject {
    @Published var recipes: [RecipeModel] = []
    private let baseURL = "https://www.themealdb.com/api/json/v1/1/random.php"
    var temp = "test"

    func loadRecipesFromJSON() {
        if let path = Bundle.main.path(forResource: "recipes", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path))
                let decoder = JSONDecoder()
                let decodedData = try decoder.decode([RecipeModel].self, from: data)
                self.recipes = decodedData
            } catch {
                print("Error loading JSON data: \(error)")
            }
        }
    }
}




