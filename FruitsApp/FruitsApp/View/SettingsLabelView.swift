//
//  SettingsLabelView.swift
//  FruitsApp (iOS)
//
//  Created by Amr Hesham on 14/06/2021.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - Properties
    let text: String
    let imageName: String
    var body: some View {
        HStack {
            Text(text.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: imageName)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(text: "Fructus", imageName: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
