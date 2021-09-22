//
//  ContentView.swift
//  Shimmer_effect
//
//  Created by AMStudent on 9/22/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ShimmerText: View {
    
    var text: String
    
    var body: some View {
        ZStack {
            Text(text)
                .font(.system(size: 75, weight: .bold))
                .foregroundColor(Color.white.opacity(0.25))
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
