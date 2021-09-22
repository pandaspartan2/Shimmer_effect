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
        ShimmerText(text: "I")
        ShimmerText(text: "is")
        ShimmerText(text: "here")
    }
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
}
struct ShimmerText: View {
    
    var text: String
    
    var body: some View {
        ZStack {
            Text(text)
                .font(.system(size: 75, weight: .bold))
                .foregroundColor(Color.white.opacity(0.25))
            
            HStack(spacing: 0){
                
                ForEach(0..<text.count, id: \.self) { index in
                    
                    Text(String(text[text.index(text.startIndex, offsetBy: index)]))
                        .font(.system(size: 75, weight: .bold))
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
