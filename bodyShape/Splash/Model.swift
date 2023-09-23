//
//  Model.swift
//  bodyShape
//
//  Created by Schweppe on 27/8/2566 BE.
//


import Foundation
import SwiftUI

public class BackgroundViewModel: ObservableObject{
    @Published var backg: colorType
    
    public init(backg: colorType) {
        self.backg = backg
    }
}
public enum  colorType {
    case purple
    case lightPurple
    case lightGreen123
    
    var color: Color{
        switch self {
            
        case .purple:
            return .purple
        case .lightPurple:
            return Color("lightPurple")
        case .lightGreen123:
            return Color("lightGreen")
            
        }
    }
}
