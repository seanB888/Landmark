//
//  LandmarkApp.swift
//  Landmark
//
//  Created by SEAN BLAKE on 8/1/21.
//

import SwiftUI

@main
struct LandmarkApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
