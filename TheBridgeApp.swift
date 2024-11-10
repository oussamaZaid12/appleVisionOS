//
//  TheBridgeApp.swift
//  TheBridge
//
//  Created by Mac Mini 5 on 29/7/2024.
//

import SwiftUI

@main
struct TheBridge: App {
    @State private var model = ViewModel()
    var body: some Scene {
        WindowGroup {
            Areas()
                .environment(model)
        }
//        .windowStyle(.plain)
//        .defaultSize(CGSize(width: 200, height: 150))
        

        WindowGroup(id: "EquipmentRealityArea") {
            EquipmentRealityArea()
                .environment(model)
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 0.8, height: 1.5, depth: 0.6, in: .meters)
        
        ImmersiveSpace(id: "FullEquipmentRealityArea") {
            FullEquipmentRealityArea()
                .environment(model)
        }
        .immersionStyle(selection: .constant(.full), in: .full)
    }
}
