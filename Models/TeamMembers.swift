//
//  TeamMembers.swift
//  TheBridge
//
//  Created by Mac Mini 5 on 29/7/2024.
//

import Foundation

enum TeamMembers: String, Identifiable, CaseIterable, Equatable {
    case Ahmed, Aziz, MedAziz, Nour, Raouf,Yahya
    var id: Self { self }
    var name: String { rawValue }
    
    var role: String {
        switch self {
        case .Ahmed:
            "manager"
        case .Aziz:
            "developer"
        case .MedAziz:
            "developer"
        case .Nour:
            "developer"
        case .Raouf:
            "developer"
        case .Yahya:
            "developer"
        }
    }
    
    var fullName: String {
        switch self {
        case .Ahmed:
            "Ahmed Naffati"
        case .Aziz:
            "Aziz Ben Ismail"
        case .MedAziz:
            "Med Aziz Charrada"
        case .Nour:
            "Nour Choueibi "
        case .Raouf:
            "Raouf Rhimi"
        case .Yahya:
            "yahya Chebbi"
        }
    }
    
    var about: String {
        switch self {
        case .Ahmed:
            "I am talented developer and experienced with building mobile applications using SWIFT for IOS and Kotlin and Java for Android"
        case .Aziz:
            "Mohamed Aziz Ben Ismail, 21 ANS, Étudiant informatique EN esprit Je Suis Un Étudiant Passionné Par Le développement et Les Nouvelles Technologies Dévelop "
        case .MedAziz:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
        case .Nour:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
        case .Raouf:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
        case .Yahya		:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
        }
    }
}
