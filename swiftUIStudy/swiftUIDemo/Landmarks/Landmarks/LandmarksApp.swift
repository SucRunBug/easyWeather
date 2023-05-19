//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by yfy on 2023/5/6.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
