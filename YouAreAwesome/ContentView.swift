//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Christian Manzaraz on 17/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .imageScale(.large)
                .foregroundStyle(.orange)
                .padding(.horizontal)
            Text("You Are Awesome!")
                .font(.largeTitle)
                .fontWeight(.heavy)
//                .foregroundColor(Color.yellow) // will be deprecated in a future iOS version.
                .foregroundStyle(.mint)
                .italic()
        }
    }
}

#Preview {
    ContentView()
}
