//
//  TeamArea.swift
//  TheBridge
//
//  Created by Mac Mini 5 on 29/7/2024.
//

import SwiftUI

struct TeamArea: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        LazyVGrid(columns: columns, spacing: 50) {
            ForEach(TeamMembers.allCases) { teamMember in
                VStack(alignment: .leading, spacing: 10) {
                    Image("team-member-\(teamMember.name)")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 180, height: 200)
                        .clipped()
                    Text(teamMember.fullName)
                        .font(.system(size: 22, weight: .bold))
                    Text(teamMember.role)
                        .font(.system(size: 18))
                    Text(teamMember.about)
                        .font(.system(size: 20))
                }
                .frame(minWidth: 180, minHeight: 200)
                .padding(40)
                .glassBackgroundEffect()
            }
        }
        .padding(20)
    }
}

struct TeamArea_Previews: PreviewProvider {
    static var previews: some View {
        TeamArea()
    }
}
