//
//  RulesView.swift
//  PartyGame
//
//  Created by Lohann Excoffon on 4/2/25.
//

import SwiftUI

struct RulesView: View {
    
    let imageNames = ["pointingIcon", "fingerRaisedIcon"]
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.blue, .red, .purple]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea(edges: .all)
                
                List(imageNames, id: \.self) { imageName in
                    HStack {
                        Image(imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50) // Thumbnail size

                        Text(imageName)
                            .font(.headline)
                        
                    } .padding(5)
                        .listRowBackground(Color.clear)
                } .scrollContentBackground(.hidden)
            }.navigationTitle("Game Rules")
            
            
        }
    }
}

#Preview {
    RulesView()
}
