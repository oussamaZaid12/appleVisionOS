//
//  lesson.swift
//  TheBridge
//
//  Created by Mac Mini 5 on 29/7/2024.
//

import Foundation
enum lesson :String,Identifiable,CaseIterable,Equatable
{
    case Android,iOS,Python,Flutter,web,java,UIUX
    var id : Self { self }
    var img : String { rawValue.lowercased()}
    
    var title:String{
        switch self{
        case.Android:
            "Create apps for Android"
        case.iOS:
            "Create apps for iOS"
        case.Python:
            "Learn Python basics"
        case.Flutter:
            "Flutter Crash Course for Beginners"
        case.web:
            "Web Development"
        case.java:
            "Learn Java basics"
        case.UIUX:
            "UI UX design"
        }
        
    }
    var more:String{
        switch self{
        case.Android:
            "Android is the most popular operating system on smartphones and tablets. The applications being written in Java, you "
        case.iOS:
            "iOS is Apple's operating system for iphones and ipad. Take a step-by-step guide to building native apps for the apple world!"
        case.Python:
            "Python is one of the most widely-used programming languages. Learning to code with Python is a highly marketable skill for any job,"
        case.Flutter:
            " Flutter, Google's framework for building cross-platform applications for Android and iOS it could work on any device with a more or less intelligent screen"
        case.web:
            "extend into development with the angular and springboot framework, a development platform that allows you to create dynamic and immersive web "
        case.java:
            "Java is one of the most widely-used programming languages. Learning to code with Java is a highly marketable skill for any job,"
        case.UIUX:
            "En partenariat avec The UXers 9antra.tn-The Bridge lance une formation UI UX design en ligne avec Noha Jaafar Head of Design & UX, Founder, "
        }
    }
    var videoName: String {
        return "\(rawValue).mp4"
    }
    
}
