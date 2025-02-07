//
//  RulesView.swift
//  PartyGame
//
//  Created by Lohann Excoffon on 4/2/25.
//

import SwiftUI

struct RulesView: View {
    
    let data = [["pointingIcon", "Pointers", "Players will be given a prompt requesting them to point at another player. At the same time, all players will point at the player they think best fits the prompt. Players must use these responses to uncover the spy."], ["fingerRaisedIcon", "Raise", "Players will be given a prompt requesting a numerical answer. At the same time, all players will raise a number of fingers to answer the question. Players must use these responses to uncover the spy."],["podiumIcon", "Rank It", "Players will be given a prompt requesting that the players rank themselves in an order. Without giving away the prompt, players must discuss and rank themselves correctly in order to uncover the spy."],["handRaisedIcon","Hand Raise", "Players will be given a prompt requesting your hand to be raised if a condition applies. Players must use everyone's response to uncover the spy"]]
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.blue, .red, .purple]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea(edges: .all)

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
                    .scrollContentBackground(.hidden) // Hide default list background
                }
            }

            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Game Rules")
                        .font(.custom("Courier New", size: 50))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 5)  
                        .padding(.top, 40)
                        .underline()
                }
            }
        }

    }
}

#Preview {
    RulesView()
}
