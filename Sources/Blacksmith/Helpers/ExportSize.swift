//
//  ExportSize.swift
//  Blacksmith
//
//  Created by Florian Schweizer on 03.01.22.
//

import SwiftUI

public enum ExportSize {
    case iPhone_6_5_Inches
    case iPhone_5_5_Inches
    
    case iPadPro_12_9_Inches
    
    case mac
    
    case appleWatch_44mm
    case appleWatch_40mm
    
    case custom(CGSize, Double)
    
    public var size: CGSize {
        switch self {
        case .iPhone_6_5_Inches:
            return CGSize(width: 1242, height: 2688)
        case .iPhone_5_5_Inches:
            return CGSize(width: 1242, height: 2208)
            
        case .iPadPro_12_9_Inches:
            return CGSize(width: 2048, height: 2732)
            
        case .mac:
            return CGSize(width: 1280, height: 800)
            
        case .appleWatch_44mm:
            return CGSize(width: 368, height: 448)
            
        case .appleWatch_40mm:
            return CGSize(width: 324, height: 394)
            
        case .custom(let size, _):
            return size
        }
    }
    
    public var cornerRadius: Double {
        switch self {
        case .iPhone_6_5_Inches:
            return 20
        case .iPhone_5_5_Inches:
            return 24
            
        case .iPadPro_12_9_Inches:
            return 40
            
        case .mac:
            return 8
            
        case .appleWatch_44mm, .appleWatch_40mm:
            return 0
            
        case .custom(_, let radius):
            return radius
        }
    }
}
