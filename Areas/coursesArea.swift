//
//  coursesArea.swift
//  TheBridge
//
//  Created by Mac Mini 5 on 29/7/2024.
//

import SwiftUI

struct coursesArea: View {
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3) // Définir 3 colonnes

    var body: some View {
        LazyVGrid(columns: columns, spacing: 20) { // Utiliser LazyVGrid pour organiser en colonnes
            ForEach(lesson.allCases) { courses in
                VStack(alignment: .leading, spacing: 10) {
                    Image("\(courses.img)")
                        .resizable()
                        .frame(width: 200, height: 200)
                    Text(courses.title)
                        .font(.system(size: 22, weight: .bold))
                    Text(courses.more)
                        .font(.system(size: 20, weight: .bold))
                }
                .padding(20)
                .glassBackgroundEffect()
            }
        }
        .padding()
    }
}


struct coursesArea_Previews: PreviewProvider {
    static var previews: some View {
        coursesArea()
    }
}
