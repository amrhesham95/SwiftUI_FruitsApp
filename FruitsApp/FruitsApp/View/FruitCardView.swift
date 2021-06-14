//
//  FruitCardView.swift
//  FruitsApp (iOS)
//
//  Created by Amr Hesham on 13/06/2021.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - Properties
    @State var isAnimating = false
    let fruit: Fruit
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // Fruit Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 20)
                    .scaleEffect( isAnimating ?  1 : 0.5)
                
                // Fruit Title
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0), radius: 20)
                
                // Fruit Headline
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 400)
                
                
                //Fruit Button
                StartButton()
            }//: VStack
        }//: ZStack
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

// MARK: - Preview
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData.first!)
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
