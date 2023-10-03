//
//  RoamRadarApp.swift
//  RoamRadar
//
//  Created by Ethan Phillips on 10/1/23.
//

import SwiftUI
import SwiftData

@main
struct RoamRadarApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Destination.self)
    }
}
