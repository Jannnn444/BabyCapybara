//
//  Model.swift
//  babycapybara
//
//  Created by yucian huang on 2024/10/27.
//

import Foundation
import SwiftUI

class Model: ObservableObject {    
    @Published var characterNum = 1
    @Published var greetings: String = "Welcome"
    
}

