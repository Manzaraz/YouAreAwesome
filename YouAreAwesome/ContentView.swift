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
            
            Spacer()

            Image(systemName: "speaker.wave.2", variableValue: 0.51)
                .resizable()
                .scaledToFit()
                .symbolRenderingMode(.multicolor)
                .padding()
                .background(Color(hue: 0.521, saturation: 0.299, brightness: 0.958))
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(color: .gray, radius: 30, x: 20, y: 20)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(.teal, lineWidth: 5)
                )
                .padding()
            
            Text("Namaste")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding()

            
            Spacer()
            
            HStack {
                Button("Awesome") {
                    // This is the action performed when the button is pressed
                    messageString = "You Are Awesome!"
                }
                .buttonStyle(.borderedProminent)
                
                Spacer()
                
                Button("Great") {
                    // This is the action performed when the button is pressed
                    messageString = "You Are Great!"
                }
                .buttonStyle(.borderedProminent)
                
            }
            .padding()
        }
    }
    
}

#Preview {
    ContentView()
}
