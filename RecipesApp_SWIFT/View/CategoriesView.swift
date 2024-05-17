//
//  CategoriesView.swift
//  RecipesApp
//
//  Created by Marija Debelic on 04.12.2023..
//

import SwiftUI

struct CategoriesView: View {
    let categories: [String] = ["Breakfast", "Lunch", "Dinner", "Dessert"]

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(categories, id: \.self) { category in
                    NavigationLink(destination: CategoryDetailView(category: category)) {
                        CategoryRow(category: category)
                    }
                }
               
            }
            .padding()
            
        }
    }
}

