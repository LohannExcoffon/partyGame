//
//  GameView.swift
//  PartyGame
//
//  Created by Lohann Excoffon on 2/2/25.
//

import SwiftUI

struct GameView: View {
    var body: some View {

        ZStack {
            // Colorful background
            LinearGradient(gradient: Gradient(colors: [.blue, .red, .purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(edges: .all)

            VStack {
                HStack {
                    Image("fingerRaisedIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                    Text("POINTERS")
                        .font(.custom("Courier New", size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Image("pointingIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                } .padding(.top, 80)
                
                Spacer()
                
                VStack {
                    Text("You are NOT the spy.")
                        .padding(.bottom, 20)
                    
                    Image("spyIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                        .padding(.bottom, 20)

                    
                    Text("Placeholder Text")
                }
                .font(.custom("Courier New", size: 30))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                
                Spacer()
                Spacer()
            }
            // Placeholder Text in the Center
            
                
                

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea(edges: .all)
    }
}

#Preview {
    GameView()
        .previewInterfaceOrientation(.landscapeLeft)
}
