//
//  ContentView.swift
//  swift UI
//
//  Created by AMStudent on 8/23/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()   
                .padding([.leading, .bottom, .trailing], 10.0)
                .frame(width: 100.0, height: 100.0)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.pink/*@END_MENU_TOKEN@*/)
            Text("TRUCK-KUN")
                .bold()
                .kerning(2.5)
        }
            
        
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
