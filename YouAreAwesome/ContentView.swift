//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Christian Manzaraz on 17/12/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var isAwesome = false
    
    var body: some View {
        VStack {
            Image(imageName)
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
                (messageString, imageName) = !isAwesome ? ("You Are Awesome!", "image0") : ("You Are Great!", "image1")

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
