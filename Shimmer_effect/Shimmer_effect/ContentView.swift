//
//  ContentView.swift
//  Shimmer_effect
//
//  Created by AMStudent on 9/22/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
        ShimmerText(text: "Joshua")        
        ShimmerText(text: "is")
        ShimmerText(text: "here")
    }
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
