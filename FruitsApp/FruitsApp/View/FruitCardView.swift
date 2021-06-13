//
//  FruitCardView.swift
//  FruitsApp (iOS)
//
//  Created by Amr Hesham on 13/06/2021.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // Fruit Image
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 20)
                // Fruit Title
                Text("Blueberry")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0), radius: 20)
                
                // Fruit Headline
                Text("Blueberries are sweet, nutritious and wildly popular fruit all over the world.")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 400)
                //Fruit Button
            }//: VStack
        }//: ZStack
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
    }
}

// MARK: - Preview
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
