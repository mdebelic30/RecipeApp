//
//  RecipesAppApp.swift
//  RecipesApp
//
//  Created by Marija Debelic on 04.12.2023..
//

import SwiftUI

@main
struct RecipesApp: App {
    @StateObject var favoriteViewModel = FavoriteViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(favoriteViewModel)
        }
    }
}

