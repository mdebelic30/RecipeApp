//
//  SettingsView.swift
//  RecipesApp
//
//  Created by Marija Debelic on 04.12.2023..
//

import SwiftUI

struct SettingsView: View {
    let appName: String = Bundle.main.infoDictionary?["CFBundleName"] as! String
    let appVersion: String = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String
    
    var body: some View {
        NavigationView{
        VStack(alignment: .center, spacing: 10) {
            VStack(alignment: .center, spacing: 5) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 100, alignment: .center)
                    .shadow(color: Color("white"), radius: 8, x: 0, y: 4)
                Text(appName.uppercased())
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
            }
            .padding()
            
            Form {
                Section(header: Text("Application")) {
                    HStack {
                        Text("Product")
                            .foregroundColor(Color.gray)
                        Spacer()
                        Text(appName)
                    }
                    HStack {
                        Text("Version")
                            .foregroundColor(Color.gray)
                        Spacer()
                        Text(appVersion)
                    }
                }
            }
            
        }
    }
        .navigationViewStyle(.stack)
}
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

