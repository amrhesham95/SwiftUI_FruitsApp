//
//  SettingsRow.swift
//  FruitsApp (iOS)
//
//  Created by Amr Hesham on 14/06/2021.
//

import SwiftUI

struct SettingsRow: View {
    let name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if linkLabel != nil && linkDestination != nil {
                    Link(linkLabel!, destination: URL(string: linkDestination!)!)
                    Image(systemName: "arrow.up.right.square")
                }else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRow_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRow(name: "name", content: "content")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
