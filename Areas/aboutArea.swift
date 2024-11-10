//
//  aboutArea.swift
//  TheBridge
//
//  Created by Mac Mini 5 on 29/7/2024.
//

import SwiftUI

struct aboutArea: View {
    var body: some View {
        VStack {
            Text("About 9antra!")
                .font(.title)
                .padding()
            
            HStack {
                Text("Here is a brief description of 9antra. It is an innovative project focused on delivering top-notch solutions for various challenges. Our mission is to make the world a better place through technology.")
                    .font(.title)
                    .padding()
                
                Image("icon-middle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 700, height: 300)
                    .padding()
            }
            .padding()
        }
    }
}

#Preview {
    aboutArea()
}
