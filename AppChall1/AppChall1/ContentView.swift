//
//  ContentView.swift
//  AppChall1
//
//  Created by AMStudent on 9/24/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("guy")
            .resizable()
                .padding()
            Text("Salad!")
                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
