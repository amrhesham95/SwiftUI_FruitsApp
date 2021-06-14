//
//  FruitRowView.swift
//  FruitsApp (iOS)
//
//  Created by Amr Hesham on 14/06/2021.
//

import SwiftUI

struct FruitRowView: View {
    // MARK: - Properties
    let fruit: Fruit
    
    // MARK: - Body
    var body: some View {
        HStack {
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .shadow(color: .black, radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title)
                    .fontWeight(.bold)
                
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
        }
    }
}

// MARK: - Preview
struct FruitsRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
