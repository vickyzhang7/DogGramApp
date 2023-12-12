//
//  DogGramAppApp.swift
//  DogGramApp
//
//  Created by Weiqi on 12/11/23.
//

import SwiftUI
import FirebaseCore

@main
struct DogGramApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
