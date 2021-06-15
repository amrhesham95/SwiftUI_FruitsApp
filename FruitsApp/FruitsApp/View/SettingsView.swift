//
//  SettingsView.swift
//  FruitsApp (iOS)
//
//  Created by Amr Hesham on 14/06/2021.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - Section 1
                    
                    GroupBox(label: SettingsLabelView(text: "Fructus", imageName: "info.circle")) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80,height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are low in fat, sodium and calories. None have cholestrol. Fruits are great source of energy")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: - Section 2
                    GroupBox(label: SettingsLabelView(text: "Customization", imageName: "paintbrush")) {
                        Divider().padding(.vertical, 4)
                        
                        Text("if you wish, you can restart the application by toggle the switch")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                
                            }
                        }
                        .padding()
                        .background(
                            Color(.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    // MARK: - Section 3
                    
                    GroupBox(label: SettingsLabelView(text: "Application", imageName: "apps.iphone")) {
                        SettingsRow(name: "Developer", content: "Amr Hesham")
                        SettingsRow(name: "Compatibility", content: "iOS 14")
                        SettingsRow(name: "Github", linkLabel: "amrhesham95", linkDestination: "github.com/amrhesham95")
                        SettingsRow(name: "SwiftUI", content: "2.0")
                        SettingsRow(name: "Version", content: "1.1.0")
                    }
                }// VStack
                .navigationBarTitle("Settings")
                .navigationBarItems(trailing:
                                        Button(action: {
                                            presentationMode.wrappedValue.dismiss()
                                            
                                        }) {
                                            Image(systemName: "xmark")
                                        }
                )
                .padding()
            }// Scroll
        } // NavigationView
    }
}

// MARK: - Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.light)
    }
}
