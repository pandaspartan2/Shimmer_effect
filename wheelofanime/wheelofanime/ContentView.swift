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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
