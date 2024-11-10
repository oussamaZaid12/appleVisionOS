//
//  Area.swift
//  TheBridge
//
//  Created by Mac Mini 5 on 29/7/2024.
//

import Foundation

enum Area: String, Identifiable, CaseIterable, Equatable {
    case team, equipment, mission,courses,about,education
    var id: Self { self }
    var name: String { rawValue.capitalized }
    var title: String {
        switch self {
        case .team:
            "SOW 54 team members"
        case .equipment:
            "SOW 54 mission equipment"
        case .mission:
            "SOW 54 mission trailer"
        case .courses:
            "showcourses"
        case .about:
            "about 9antra"
        case .education:
            "start here"
        }
    }
}
