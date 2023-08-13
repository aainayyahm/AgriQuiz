//
//  PC1App.swift
//  PC1
//
//  Created by Ayla Ainayyah M on 20/05/23.
//

import SwiftUI

@main
struct PC1App: App {
    init() {
        music.shared.playMusic()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
