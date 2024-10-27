//
//  StartGame.swift
//  babycapybara
//
//  Created by yucian huang on 2024/10/27.
//

import SwiftUI

struct StartGame: View {
    
    var greetings: String = "Welcome"
    
    var body: some View {
       
        VStack{
            Image("1")
                .resizable()
                .frame(width: 100, height: 100)
                .padding()
            
            Text("\(greetings)")
                .padding()
                .padding()
                .font(.title)
                .fontDesign(.monospaced)
                .background(Color.yellow)
                .cornerRadius(15)
            
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    
                })
                Image(systemName: "arrowtriangle.left.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.yellow)
                    .cornerRadius(5)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    
                })
                Image(systemName: "arrowtriangle.right.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.yellow)
                    .cornerRadius(5)
            }.padding()
        }
    }
    
}

#Preview {
    StartGame()
}
