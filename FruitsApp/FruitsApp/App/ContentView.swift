//
//  ContentView.swift
//  Shared
//
//  Created by Amr Hesham on 13/06/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(fruitsData.shuffled()) { fruit in
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                } // Fruit Row
            } // Fruits List
            .navigationTitle("Fruits")
        } // NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
