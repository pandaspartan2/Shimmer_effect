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
