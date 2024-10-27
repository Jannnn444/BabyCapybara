//
//  PlayGround.swift
//  babycapybara
//
//  Created by yucian huang on 2024/10/27.
//

import SwiftUI

struct PlayGround: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
        }.onAppear{
            
        }
        .navigationBarBackButtonHidden(true) // Hides the back button
    }
        
}

#Preview {
    PlayGround()
}
