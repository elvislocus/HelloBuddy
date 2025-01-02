//
//  DeviceType.swift
//  HelloBuddy
//
//  Created by Elvis Lin on 2025/1/1.
//

import SwiftUI

enum DeviceType {
    case iPhone
    case iPhonePlus
    case iPadMini
    case iPad
    case iPadPro

    static var current: DeviceType {
        let screenWidth = UIScreen.main.bounds.width

        switch screenWidth {
        case 0...402:       // iPhone SE, mini, standard
            return .iPhone
        case 403...440:     // iPhone Plus, Pro Max
            return .iPhonePlus
        case 441...768:     // iPad Mini
            return .iPadMini
        case 769...1024:    // iPad, iPad Air
            return .iPad
        default:            // iPad Pro
            return .iPadPro
        }
    }
}
