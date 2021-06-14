//
//  FruitHeaderView.swift
//  FruitsApp (iOS)
//
//  Created by Amr Hesham on 14/06/2021.
//

import SwiftUI

struct FruitHeaderView: View {
    
    // MARK: -  Properties
    let fruit: Fruit
    @State var isAnimatingImage: Bool = false
    
    // MARK: - Body
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black, radius: 8, x: 6, y: 8)
                .scaleEffect(isAnimatingImage ? 1 : 0.6)
            
        } // ZStack
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

// MARK: - Preview
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData.first!)
            .previewLayout(.fixed(width: 370, height: 440))
    }
}
