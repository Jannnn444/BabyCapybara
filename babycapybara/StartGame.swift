//
//  StartGame.swift
//  babycapybara
//
//  Created by yucian huang on 2024/10/27.
//

import SwiftUI

struct StartGame: View {
    
    @ObservedObject var model: Model  // Use @ObservedObject to observe changes
    @State var myChoice: Int = 1
    
    var body: some View {
        NavigationStack {
            VStack{
                Image("\(model.characterNum)")
                    .resizable()
                    .frame(width: 150, height: 135)
                    .padding()
                
                ZStack {
                    Text("\(model.greetings)")
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
                            if model.characterNum > 1 {
                                model.characterNum -= 1
                                print("My number: \(model.characterNum)")
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
                            if model.characterNum < 6 {
                                model.characterNum += 1
                                myChoice = model.characterNum
                                print("My number: \(model.characterNum)")
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
                
                NavigationLink(destination: PlayGround(model: Model(characterNum: myChoice))){
                    Text("GO")
                        .frame(width: 80, height: 80, alignment: .center)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .fontDesign(.monospaced)
                        .font(.headline)
                        .cornerRadius(10)
                        .padding()
                }
                // jump alert "u sure ur beginner look? you can change later."
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    model.greetings = "Choose\nYour Warrior"
                }
            }
        }
        .navigationBarBackButtonHidden(true) // Hides the back button
    }
}


ail.com"
