//
//  FruitDetailsView.swift
//  FruitsApp (iOS)
//
//  Created by Amr Hesham on 14/06/2021.
//

import SwiftUI

struct FruitDetailsView: View {
    // MARK: - Properties
    let fruit: Fruit
    
    // MARK: - Body

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                // Header
                FruitHeaderView(fruit: fruit)
                
                VStack(alignment: .leading , spacing: 20) {
                    // Title
                    Text(fruit.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(fruit.gradientColors[1])
                    
                    // Headline
                    Text(fruit.headline)
                    
                    // Nutrituents
                    
                    // Subheadline
                    Text("Learn more abount \(fruit.title)")
                        .fontWeight(.bold)
                        .foregroundColor(fruit.gradientColors[1])
                    
                    // Description
                    Text(fruit.description)
                    
                    // Link
                    SourceLinkView()
                        .padding(.bottom, 40)
                        .padding(.top, 20)
                }// Title Stack
                .padding(.horizontal, 20)
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            } // Scroll
            .edgesIgnoringSafeArea(.top)
        } // NavigationView
    }
}

struct FruitDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailsView(fruit: fruitsData.first!)
    }
}
