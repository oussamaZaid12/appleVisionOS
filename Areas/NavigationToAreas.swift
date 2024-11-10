//
//  NavigationToAreas.swift
//  TheBridge
//
//  Created by Mac Mini 5 on 29/7/2024.
//

import SwiftUI

struct NavigationToAreas: View {
    var body: some View {
        VStack {
            Text("welcome to TheBridge")
                .monospaced()
                .font(.system(size: 40, weight: .bold))
                .padding(.top, 400)
            HStack (spacing: 25) {
                ForEach(Area.allCases) { area in
                    NavigationLink {
                        Text(area.title)
                            .monospaced()
                            .font(.system(size: 40, weight: .bold))
                        
                        switch area {
                        case .team:
                            TeamArea()
                        case .equipment:
                            EquipmentArea()
                        case .mission:
                            MissionArea()
                        case .courses:
                            coursesArea()
                        case .about:
                            aboutArea()
                        case .education:
                            EducationArea()
                            
                        }
                        
                        
                        Spacer()
                    } label: {
                        Label(area.name, systemImage: "chevron.right")
                            .monospaced()
                            .font(.title)
                    }
                    .controlSize(.extraLarge)
                }
            }
        }
        .background() {
            Image("AppleVisionPro")
//            AmbienceVid()
//                .edgesIgnoringSafeArea(.all)
        }
    }
}

//struct NavigationToAreas: View {
//    var body: some View {
//        VStack {
//            NavigationLink {
//                Text("Hello world 1, nav 1")
//            } label: {
//                Label("Hey 1", systemImage: "chevron.right")
//            }
//
//            NavigationLink {
//                Text("Hello world 2, nav 2")
//            } label: {
//                Label("Hey 2", systemImage: "chevron.right")
//            }
//
//            NavigationLink {
//                Text("Hello world 3, nav 3")
//            } label: {
//                Label("Hey 3", systemImage: "chevron.right")
//            }
//        }
//    }
//}

#Preview {
    NavigationToAreas()
}

