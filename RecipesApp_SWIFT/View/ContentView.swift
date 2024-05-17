//
//  ContentView.swift
//  RecipesApp
//
//  Created by Marija Debelic on 04.12.2023..
//

import SwiftUI
import Alamofire

struct ContentView: View {
    @State private var isDarkMode = false
    var api = APIManager()
    @StateObject var favoriteViewModel = FavoriteViewModel()
    var body: some View {
        NavigationView {
            VStack {
                TabView{
                    HomeView()
                    
                        .tabItem{
                            Label("Home", systemImage: "house")
                        }
                    
                    CategoriesView()
                        .tabItem{
                            Label("Categories", systemImage: "square.fill.text.grid.1x2")
                        }
                    
                    NewRecipeView()
                        .tabItem{
                            Label("New Recipe", systemImage: "plus")
                        }
                    
                    FavRecipeView()
                        .tabItem{
                            Label("Favorites", systemImage: "heart")
                        }
                    
                    SettingsView()
                        .tabItem{
                            Label("Settings", systemImage: "gear")
                        }
                    
                        
                }
            }
            
            .navigationBarItems(trailing:
                Button(action: {
                    isDarkMode.toggle()
                    updateDarkMode(isDarkMode)
                }) {
                    Image(systemName: isDarkMode ? "lightbulb.fill" : "lightbulb")
                        .foregroundColor(.primary)
                }
            )
            .onAppear {
                // Apply initial appearance based on the dark mode state
                applyInitialDarkModeAppearance()
            }
            
            
        }
        
        .navigationViewStyle(.stack)

    }
    
    func updateDarkMode(_ isDark: Bool) {
        if #available(iOS 15.2, *) {
            UIApplication.shared.windows.first?.overrideUserInterfaceStyle = isDark ? .dark : .light
        }
    }
    
    func applyInitialDarkModeAppearance() {
        // Apply initial appearance based on the dark mode state when view appears
        if #available(iOS 13.0, *) {
            UIApplication.shared.windows.first?.overrideUserInterfaceStyle = isDarkMode ? .dark : .light
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




