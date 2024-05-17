//
//  GlobalSettings.swift
//  RecipesApp
//
//  Created by Marija Debelic on 07.12.2023..
//

import Foundation
import SwiftUI
//Singleton class
public class GlobalSettings{
    //Singleton instance
    static let instance = GlobalSettings()
    private init(){}
    
    //Colors
    final var primaryColor = Color(.init(red: 117/255, green: 221/255, blue: 221/255, alpha: 1));
    final var secondaryColor = Color(.init(red: 132/255, green: 199/255, blue: 208/255, alpha: 1));
    final var accColor1 = Color(.init(red: 147/255, green: 104/255, blue: 183/255, alpha: 1));
    final var accColor2 = Color(.init(red: 146/255, green: 151/255, blue: 196/255, alpha: 1))
    
    //Gradients
    final var buttonBackground = LinearGradient(
        gradient: Gradient(colors: [Color(.init(red: 117/255, green: 221/255, blue: 221/255, alpha: 1)), Color(.init(red: 146/255, green: 151/255, blue: 196/255, alpha: 1))]),
        startPoint: .top, endPoint: .bottom)
    
    final var appBackground = LinearGradient(
        gradient: Gradient(colors: [Color(.init(red: 146/255, green: 151/255, blue: 196/255, alpha: 1)), Color.white/*, Color.white*/]),
        startPoint: .topLeading, endPoint: .bottomTrailing)
}
