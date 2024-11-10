//
//  Areas.swift
//  TheBridge
//
//  Created by Mac Mini 5 on 29/7/2024.
//

import SwiftUI

struct Areas: View {
    var body: some View {
        ZStack {
            AmbienceVid()
                .edgesIgnoringSafeArea(.all)
            NavigationStack {
                NavigationToAreas()
            }
        }
    }
}

#Preview {
    Areas()
}
