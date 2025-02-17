//
//  RecipeModel.swift
//  RecipesApp
//
//  Created by Marija Debelic on 04.12.2023..
//

import Foundation
import Alamofire

enum Category: String {
    case breakfast = "Breakfast"
    case lunch = "Lunch"
    case dinner = "Dinner"
    case dessert = "Dessert"
}

struct RecipeModel: Identifiable, Codable, Equatable, Hashable {
    var id = UUID()
    let name: String
    let ingredients: [String]
    let directions: [String]
    let category: String
    let image: String
    var isFavorite: Bool
}

let pancakeRecipe = RecipeModel(
    name: "2-Ingredient Wheat-Free Banana Pancakes (Paleo)",
    ingredients: [
        "1 teaspoon butter",
        "1 large banana, broken into chunks",
        "1 large egg"
    ],
    directions: [
        "Heat a large skillet over medium heat; add butter.",
        "Mash banana chunks in a bowl using a fork until it becomes a wet consistency. Add egg and whisk mixture until batter is smooth.",
        "Drop batter into the hot butter to make 2 pancakes. Cook until bubbles form and the edges are dry, about 3 minutes. Flip and cook until browned on the other side, about 2 minutes."
    ],
    category: "Breakfast",
    image: "pancakes",
    isFavorite: false 
)

let pastaRecipe = RecipeModel(
    name: "Creamy Chicken and Pasta",
    ingredients: [
        "1 tablespoon vegetable oil",
        "1 pound skinless, boneless chicken breast, cut up",
        "1 (16 ounce) bag frozen pasta and vegetable blend",
        "1 (10.75 ounce) can your favorite Campbell's Cream Soup*",
        "1/2 cup water"
    ],
    directions: [
        "Heat oil in skillet. Add chicken and cook until browned, stirring often.",
        "Add vegetable pasta blend, soup and water. Heat to a boil. Cover and cook over low heat 10 minutes or until done."
    ],
    category: "Lunch",
    image: "pasta",
    isFavorite: false
)

let macRecipe = RecipeModel(
    name: "Mac and Cheese Bake",
    ingredients:[
        "20 ounces elbow macaroni",
        "1/2 cup butter",
        "3/8 cup all-purpose flour",
        "6 cups milk",
        "1 1/2 pounds shredded sharp Cheddar cheese",
        "3/4 cup bread crumbs",
        "2 tablespoons melted butter"
    ],
    directions:[
        "Preheat oven to 350 degrees F (175 degrees C). Grease a 9x13-inch baking dish.",
        "Bring a large pot of lightly salted water to a boil. Cook elbow macaroni in the boiling water, stirring occasionally, until cooked through but firm to the bite, 8 minutes; drain.",
        "Melt 1/2 cup butter in a large pot over medium heat; stir flour into butter until smooth. Stream milk into the butter mixture while stirring; bring to a boil. Cook and stir until thickened, about 2 minutes.",
        "Reduce heat to medium-low. Add Cheddar cheese in small batches, stirring each into the milk mixture and melting until adding the next. Add macaroni and stir to coat. Pour macaroni into prepared baking dish.",
        "Stir bread crumbs and melted butter together in a small bowl; sprinkle over the macaroni.",
        "Bake in preheated oven until the top is golden brown, 35 to 40 minutes."
    ],
    category: "Dinner",
    image: "mac",
    isFavorite: false
)

let cakeRecipe = RecipeModel(
    name: "Cheesecake",
    ingredients:[
        "3 (8 ounce) packages cream cheese",
        "1 cup white sugar",
        "1/4 teaspoon almond extract",
        "1/4 teaspoon salt",
        "5 eggs",
        "1 cup sour cream",
        "2 tablespoons white sugar",
        "1/4 teaspoon vanilla extract"
    ],
    directions:[
        "Preheat oven to 325 degrees F (165 degrees C).  In a large bowl, combine cream cheese, 1 cup sugar, almond extract, eggs and salt. Beat until smooth. Pour into a greased deep dish pie plate.",
        "Bake at 325 degrees F  (165 degrees C) for 45 to 50 minutes. Remove from oven and let cool for 20 minutes.",
        "To Make Topping: combine sour cream, 2 tablespoons sugar and 1/4 teaspoon vanilla extract and stir until smooth. Spread evenly on top of the baked cheesecake, then bake 10 minutes at 325 degrees F (165 degrees C) to set the top.",
        "Let cool, refrigerate several hours before serving."
    ],
    category: "Dessert",
    image: "cake",
    isFavorite: false
)







