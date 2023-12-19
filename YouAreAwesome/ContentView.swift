//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Christian Manzaraz on 17/12/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var isAwesome = false
    @State private var imageNumber = 0
    
    var body: some View {
        VStack {
            Image("image\(imageNumber)")
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .padding()
            
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding()
            
            Spacer()
            
            Button("Show Message") {
                imageNumber = imageNumber >= 9 ? 0 : imageNumber + 1
                
                messageString = !isAwesome ? "You Are Awesome!" : "You Are Great!"
                //TODO: DO SOMETHING
                isAwesome.toggle()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
    }
    
}

#Preview {
    ContentView()
}
