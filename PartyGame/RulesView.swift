//
//  RulesView.swift
//  PartyGame
//
//  Created by Lohann Excoffon on 4/2/25.
//

import SwiftUI

struct RulesView: View {
    
    let data = [["pointingIcon", "Pointers", "Players will be given a prompt requesting them to point at another player. At the same time, all players will point at the player they think best fits the prompt. Players must use these responses to uncover the spy."], ["fingerRaisedIcon", "Digits", "Players will be given a prompt requesting a numerical answer. At the same time, all players will raise a number of fingers to answer the question. Players must use these responses to uncover the spy."],["podiumIcon", "Ranks", "Players will be given a prompt requesting that the players rank themselves in an order. Without giving away the prompt, players must discuss and rank themselves correctly in order to uncover the spy."],["handRaisedIcon","Votes In", "Players will be given a prompt requesting your hand to be raised if a condition applies. Players must use everyone's response to uncover the spy"],["thumbsUpIcon", "Aye", "Players will be given a prompt which requires a thumbs up or thumbs down reaction. Players must use everyone's response to uncover the spy."],["categoriesIcon", "Categories", "Players will be given a specific prompt requesting an answer while they spy will only be told the general category. Players must go around and give their answer. An answer cannot be repeated. Players must use the answers to uncover the spy."]]
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.blue, .red, .purple]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea(edges: .all)
                VStack(spacing: 20) {
                    Text("Game Rules")
                        .font(.custom("Courier New", size: 50))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                        .underline()
                    VStack {
                        Text("For all games, one player will randomly be selected as the spy. The spy will not receive the prompt and must try their best to blend in and not raises suspicions. Other players must communicate and work together to uncover the spy!")
                            .font(.custom("Courier New", size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 5)
                        Text("Points are distributed at the end of each round. Point system can be decided by players.")
                            .font(.custom("Courier New", size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    } .padding(.horizontal, 10)
                    
                    GeometryReader { geometry in

                            List {
                                ForEach(data.indices, id: \.self) { index in
                                    VStack {
                                        HStack {
                                            VStack {
                                                Text(data[index][1])
                                                    .font(.custom("Courier New", size: 15))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                    .shadow(radius: 5)
                                                
                                                Image(data[index][0])
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 50, height: 50)
                                            }
                                            .padding(.leading, 20)
                                            .frame(width: geometry.size.width * 0.3)
                                            
                                            Text(data[index][2])
                                                .font(.custom("Courier New", size: 12))
                                                .fontWeight(.bold)
                                                .foregroundColor(.white)
                                                .padding(.trailing, 25)
                                                .frame(width: geometry.size.width * 0.7)
                                        }
                                        .padding(5)
                                        .frame(maxWidth: .infinity)
                                        
                                        // White Divider between items, but not at the end
                                        if index != data.indices.last {
                                            Divider()
                                                .frame(height: 2)
                                                .background(Color.white)
                                                .frame(maxWidth: .infinity)
                                                .padding(.bottom, 10)
                                        }
                                    }
                                    .listRowInsets(EdgeInsets())
                                    .listRowBackground(Color.clear) // Make rows transparent
                                }
                            }
                            .frame(maxWidth: .infinity)
                            .scrollContentBackground(.hidden)

                        
                    }
                }
                
            }

        }

    }
}

#Preview {
    RulesView()
}
