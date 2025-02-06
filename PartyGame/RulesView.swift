//
//  RulesView.swift
//  PartyGame
//
//  Created by Lohann Excoffon on 4/2/25.
//

import SwiftUI

struct RulesView: View {
    
    let data = [["pointIcon", "Pointers", "Game Rules Here"], ["fingerRaisedIcon", "Raise", "Game Rules..."]]
    
    var body: some View {
        NavigationView {
                    ZStack {
                        LinearGradient(gradient: Gradient(colors: [.blue, .red, .purple]), startPoint: .top, endPoint: .bottom)
                            .ignoresSafeArea(edges: .all)
                        
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
                                        Text(data[index][2])
                                            .font(.custom("Courier New", size: 12))
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .frame(width: 200.0)
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
//
                                    }
                                }
                                .listRowInsets(EdgeInsets())
                                .listRowBackground(Color.clear) // Make rows transparent
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .scrollContentBackground(.hidden) // Hide default list background
                    }
                    .navigationTitle("Game Rules")
            
                }
    }
}

#Preview {
    RulesView()
}
