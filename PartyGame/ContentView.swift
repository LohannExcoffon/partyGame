//
//  ContentView.swift
//  PartyGame
//
//  Created by Lohann Excoffon on 2/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
                    // Colorful background w/ gradient
            LinearGradient(gradient: Gradient(colors: [.blue, .red, .purple]), startPoint: .top, endPoint: .bottom)
                        .edgesIgnoringSafeArea(.all)
                    
            VStack {
                // Game Title
                VStack {
                    Text("PARTY")
                        .font(.custom("Courier New", size: 50))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                    Text("GAME")
                        .font(.custom("Courier New", size: 50))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                } .padding(.top, 100)
                
                Spacer()
                
                // Buttons
                VStack(spacing: 20) {
                    Button(action: {
                        // Action for joining a game
                    }) {
                        Text("Join Game")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .frame(width: 200, height: 50)
                            .background(Color.white)
                            .foregroundColor(.blue)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                    }
                    
                    Button(action: {
                        // Action for creating a game
                    }) {
                        Text("Create Game")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .frame(width: 200, height: 50)
                            .background(Color.white)
                            .foregroundColor(.purple)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                    }
                }
                .padding(.bottom, 100)
                
                // HStack at the bottom with icons and text with a tinted background
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.white)
                    
                    Text("Placeholder")
                        .font(.headline)
                        .foregroundColor(.white)
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity)
                .padding()
            }
                }
    }
}

#Preview {
    ContentView()
}
