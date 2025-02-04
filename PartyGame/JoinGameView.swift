//
//  JoinGameView.swift
//  PartyGame
//
//  Created by Lohann Excoffon on 2/2/25.
//

import SwiftUI

struct JoinGameView: View {
    
    @State private var userInput: String = ""
    
    var body: some View {
        
        
        ZStack {
            // Colorful background
            LinearGradient(gradient: Gradient(colors: [.blue, .red, .purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(edges: .all)
            
            VStack {
                Text("Enter Game Pin:")
                    .font(.custom("Courier New", size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                HStack {
                    Spacer()
                    
                    TextField("Game Pin...", text: $userInput)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.trailing, 10)
                    
                    
                    Button(action: {
                        print("User typed: \(userInput)")
                        userInput = ""
                    }) {
                        Text("Join Game")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .frame(height: 50.0)
                            .background(Color.white)
                            .foregroundColor(.blue)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                    }
                    .frame(height: 70.0)
                    
                    Spacer()
                }
                .frame(width: 300.0, height: 70)
                
            }

            }

            
                
            
    }
}

#Preview {
    JoinGameView()
}
