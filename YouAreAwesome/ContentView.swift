//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Christian Manzaraz on 17/12/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageString = ""
    @State private var isAwesome = false
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    var messages = ["You Are Awesome!", "You Are Great!", "Fabolous? That's You!", "You Are Fantastic"]

    
    var body: some View {
        VStack {
            Image(imageString)
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
                imageString = "image\(imageNumber)"
                messageString = messages[messageNumber]
                imageNumber = imageNumber >= 9 ? 0 : imageNumber + 1
                messageNumber = messageNumber >= messages.count - 1 ? 0 : messageNumber + 1
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
