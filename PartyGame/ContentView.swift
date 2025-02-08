//
//  ContentView.swift
//  PartyGame
//
//  Created by Lohann Excoffon on 2/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
                    VStack {
                        Text("Welcome to the Main View")
                            .font(.title)
                            .padding()
                        
                        // Navigation Button to go to AnotherView
                        NavigationLink(destination: RulesView()) {
                            Text("Go to Next View")
                                .font(.headline)
                                .padding()
                                .frame(width: 200)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                }
    }
}

#Preview {
    ContentView()
}
