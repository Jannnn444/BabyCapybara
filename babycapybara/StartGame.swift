//
//  StartGame.swift
//  babycapybara
//
//  Created by yucian huang on 2024/10/27.
//

import SwiftUI

struct StartGame: View {
    
   @State private var characterNum = 1
   @State private var greetings: String = "Welcome"
    
    var body: some View {
       
        VStack{
            Image("\(characterNum)")
                .resizable()
                .frame(width: 100, height: 100)
                .padding()
            
            ZStack {
            Text("\(greetings)")
                    .multilineTextAlignment(.center)
                    .bold()
                .padding()
                .padding()
                .frame(width: 240, height: 160)
                .font(.title2)
                .fontDesign(.monospaced)
                .background(Color.yellow)
                .cornerRadius(15)
                
                
          
                HStack {
                    Button(action: {
                        if characterNum > 1 {
                            characterNum -= 1
                        }
                    }) {
                        Image(systemName: "arrowtriangle.left.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.yellow)
                            .cornerRadius(5)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        if characterNum < 6 {
                            characterNum += 1
                        }
                    }) {
                        Image(systemName: "arrowtriangle.right.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.yellow)
                            .cornerRadius(5)
                    }
                    
                }
            }.padding()
            
            Button(action: {}) {
                Text("GO")
                    .padding()
                    .frame(width: 80, height: 80, alignment: .center)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .fontDesign(.monospaced)
                    .font(.headline)
                    .cornerRadius(10)
                    .bold()
            }.padding()
            // jump alert "u sure ur beginner look? you can change later."
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                greetings = "Choose\nYour Warrior"
            }
        }
    }
    
}

#Preview {
    StartGame()
}
