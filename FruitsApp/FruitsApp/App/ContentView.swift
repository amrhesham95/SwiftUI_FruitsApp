//
//  ContentView.swift
//  Shared
//
//  Created by Amr Hesham on 13/06/2021.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @State private var isShowingSettings: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruitsData.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailsView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    } // Fruit Row + link
                }
            } // Fruits List
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                                    Button(action: {
                                        isShowingSettings = true
                                    }) {
                                        Image(systemName: "slider.horizontal.3")
                                    } )// Button
            .sheet(isPresented: $isShowingSettings) {
                SettingsView()
            }
        } // NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
