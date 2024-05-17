//
//  NewRecipeView.swift
//  RecipesApp
//
//  Created by Marija Debelic on 04.12.2023..
//

import SwiftUI

enum RecipeCategory: String {
    case breakfast = "Breakfast"
    case lunch = "Lunch"
    case dinner = "Dinner"
    case dessert = "Dessert"
}

struct NewRecipeView: View {
    @State private var recipes: [RecipeModel] = []
    let categories: [RecipeCategory] = [.breakfast, .lunch, .dinner, .dessert]

    @State private var name = ""
    @State private var image = "" // Placeholder for image name
    @State private var description = ""
    @State private var ingredients = ""
    @State private var selectedCategory = RecipeCategory.breakfast.rawValue // Default category

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Recipe Details")) {
                    TextField("Name of the recipe", text: $name)
                    TextField("Description", text: $description)
                    TextField("Ingredients (comma-separated)", text: $ingredients)
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(categories, id: \.self) { category in
                            Text(category.rawValue)
                                .tag(category.rawValue)
                        }
                    }
                }

                Section {
                    Button(action: {
                        // Handle saving the recipe when the user taps the button
                        saveRecipe()
                    }) {
                        Text("Save Recipe")
                    }
                }
            }
            .navigationTitle("New Recipe")
        }
    }

    func saveRecipe() {
        // Replace the placeholder with an array of strings containing the recipe directions
        let newRecipe = RecipeModel(
            name: name,
            ingredients: ingredients.components(separatedBy: ","),
            directions: ["Step 1", "Step 2", "Step 3"], // Replace with actual directions
            category: selectedCategory,
            image: "placeholderImageName",
            isFavorite: false
        )

        recipes.append(newRecipe) // Add the new recipe to the recipes array

        // Optionally, you can reset the form fields after saving
        name = ""
        image = ""
        description = ""
        ingredients = ""
        selectedCategory = RecipeCategory.breakfast.rawValue
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
