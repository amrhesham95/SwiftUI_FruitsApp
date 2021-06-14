//
//  FruitsAppApp.swift
//  Shared
//
//  Created by Amr Hesham on 13/06/2021.
//

import SwiftUI

@main
struct FruitsAppApp: App {
    // MARK: - Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    // MARK: - Properties
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
