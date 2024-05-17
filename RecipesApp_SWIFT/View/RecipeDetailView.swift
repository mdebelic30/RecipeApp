//
//  RecipeDetailView.swift
//  RecipesApp
//
//  Created by Marija Debelic on 07.12.2023..
//

import Foundation
import SwiftUI

struct RecipeDetailView: View {
    let recipe: RecipeModel
    let isFavorite: Bool
    let toggleFavorite: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text(recipe.name)
                    .font(.headline)
                
                Button(action: {
                    self.toggleFavorite()
                }) {
                    Image(systemName: isFavorite ? "heart.fill" : "heart")
                        .foregroundColor(isFavorite ? .red : .gray)
                        .font(.system(size: 24))
                }
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Ingredients:")
                    .font(.subheadline)
                
                ForEach(recipe.ingredients, id: \.self) { ingredient in
                    Text("• \(ingredient)")
                }
            }
            .padding(.horizontal)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Directions:")
                    .font(.subheadline)
                
                ForEach(recipe.directions, id: \.self) { direction in
                    Text("• \(direction)")
                }
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.gray.opacity(0.4), radius: 5, x: 0, y: 2)
    }
}
