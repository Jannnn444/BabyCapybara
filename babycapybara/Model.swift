//
//  Model.swift
//  babycapybara
//
//  Created by yucian huang on 2024/10/27.
//

import Foundation
import SwiftUI

class Model: ObservableObject {    
    @Published var characterNum: Int
    @Published var greetings: String
    
    
    init(characterNum: Int, greetings: String = "Welcome") {
        self.characterNum = characterNum
        self.greetings = greetings
    }
    
}

