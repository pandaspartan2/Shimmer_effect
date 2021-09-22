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
    
    @State var animation = false
    
    var body: some View {
        ZStack {
            Text(text)
                .font(.system(size: 75, weight: .bold))
                .foregroundColor(Color.white.opacity(0.25))
            
            HStack(spacing: 0){
                
                ForEach(0..<text.count, id: \.self) { index in
                    
                    Text(String(text[text.index(text.startIndex, offsetBy: index)]))
                        .font(.system(size: 75, weight: .bold))
                        .foregroundColor(randomColor())
                }
            }
            .mask(
            
            Rectangle()
                
                .fill(
                    
                    LinearGradient(gradient: .init(colors: [Color.white.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                )
                .rotationEffect(.init(degrees: 70))
                .padding(20)
            
                )
            
            .onAppear(perform: {
                withAnimation(Animation.linear(duration: 2.0).repeatForever(autoreverses: false))
                {
                    animation.toggle()
                }
            })
        }
    }
    
    func randomColor() -> Color {
        
        let Thompson = UIColor(red: CGFloat.random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1)
        
        return Color(Thompson)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
