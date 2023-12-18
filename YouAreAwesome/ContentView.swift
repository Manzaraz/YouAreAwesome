//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Christian Manzaraz on 17/12/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    
    var body: some View {
        VStack {
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .padding()
            
            HStack {
                Button("Awesome") {
                    // This is the action performed when the button is pressed
                    messageString = "You Are Awesome!"
                }
                .buttonStyle(.borderedProminent)
                
                Button("Great") {
                    // This is the action performed when the button is pressed
                    messageString = "You Are Great!"
                }
                .buttonStyle(.borderedProminent)
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}
