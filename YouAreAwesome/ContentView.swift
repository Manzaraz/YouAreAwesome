//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Christian Manzaraz on 17/12/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "When the Genius Bar needs help, they call you!"
    
    var body: some View {
        
        
       ZStack {
            Rectangle()
                .fill(
                    Gradient(colors: [.white, .blue, .red])
                )
            
            VStack {
                Text("You Have Skills!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundStyle(Color("Gold-BC"))
                    .padding()
                    .background(Color("Maroon-BC"))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
                Spacer()
                
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.red)
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
    //                .border(.orange, width: 1)
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
    //            .border(.orange, width: 5)
                .padding()
                
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}
