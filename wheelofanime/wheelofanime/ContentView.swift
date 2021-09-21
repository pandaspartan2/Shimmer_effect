//
//  ContentView.swift
//  wheelofanime
//
//  Created by AMStudent on 9/21/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var selected: Int = 0
    
    var body: some View {
        
       
        VStack {
            Text("Wheel Of Anime!")
                .padding()
        
        
        TabView(selection: $selected) {
            
            ForEach(1...4, id: \.self) { index in
                
                ZStack {
                    GeometryReader { reader in
                        Image("P\(index)")
                            .resizable()
                            .frame(width: 200.0, height: 200.0)
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    }
                    .frame(width: 200.0, height: 200.0)
                    .cornerRadius(15)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: -5, y: 5)
                }
            }
        }
        .tabViewStyle(PageTabViewStyle (indexDisplayMode: .never))
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
