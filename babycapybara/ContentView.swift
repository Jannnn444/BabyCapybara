//
//  ContentView.swift
//  babycapybara
//
//  Created by yucian huang on 2024/10/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("babycapybara")
                    .resizable()
                    .frame(width: 250, height: 200)
                    .padding()
                
                Text("Baby Capybara")
                    .font(.title)
                    .foregroundStyle(.black)
                    .fontDesign(.monospaced)
                NavigationLink(destination: StartGame()) {
                    Text("Start Game")
                        .tint(.black)
                        .font(.title)
                        .padding()
                        .fontDesign(.monospaced)
                        .background(Color.yellow)
                        .cornerRadius(15)
                        .padding(.top, 80)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
