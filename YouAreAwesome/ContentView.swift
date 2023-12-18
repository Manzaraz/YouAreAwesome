//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Christian Manzaraz on 17/12/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "You Are Great!"
    
    var body: some View {
        VStack {
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.mint)
                .padding()
            
            Button("Press Me") {
                // This is the action performed when the button is pressed
                messageString = "You Are Awesome!"
            }

        }
    }
}

#Preview {
    ContentView()
}
