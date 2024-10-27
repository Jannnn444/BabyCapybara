//
//  PlayGround.swift
//  babycapybara
//
//  Created by yucian huang on 2024/10/27.
//

import SwiftUI

struct PlayGround: View {
    @ObservedObject var model: Model
    
    var body: some View {
        VStack {
            Image("\(model.characterNum)")
                .resizable()
                .frame(width: 150, height: 135)
                .padding()
        }.onAppear{
            //update model.characterNum
        }
        .navigationBarBackButtonHidden(true) // Hides the back button
    }
        
}

#Preview {
    PlayGround(model: Model())
}
