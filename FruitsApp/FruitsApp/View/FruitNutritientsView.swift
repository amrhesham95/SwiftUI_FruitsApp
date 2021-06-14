//
//  FruitNutritientsView.swift
//  FruitsApp (iOS)
//
//  Created by Amr Hesham on 14/06/2021.
//

import SwiftUI

struct FruitNutritientsView: View {
    
    // MARK: - Properties
    let fruit: Fruit
    let nutritients = ["Energy","Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    // MARK: - Body
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutritients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutritients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    } // HStack
                }
            }
        } // Box
    }
}

// MARK: - Preview
struct FruitNutritientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutritientsView(fruit: fruitsData.first!)
            .colorScheme(.dark)
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
