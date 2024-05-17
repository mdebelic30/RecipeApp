//
//  CategoryRow.swift
//  RecipesApp
//
//  Created by Marija Debelic on 09.12.2023..
//

import SwiftUI

struct CategoryRow: View {
    let category: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
            
            HStack {
                VStack(alignment: .leading) {
                    Text(category)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .padding(.vertical, 8)
                    
                    Spacer()
                }
                .padding(.leading, 20)
                
                Spacer()
                
                categoryImage(for: category)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .padding(.trailing, 20)
            }
        }
        .frame(height: 120)
        .padding(.horizontal)
        .padding(.vertical, 5)
    }

    func categoryImage(for category: String) -> Image {
        switch category {
            case "Breakfast":
                return Image("breakfast")
            case "Lunch":
                return Image("lunch")
            case "Dinner":
                return Image("dinner")
            case "Dessert":
                return Image("dessert")
            default:
                return Image(systemName: "photo")
        }
    }
}


