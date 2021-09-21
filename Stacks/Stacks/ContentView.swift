//
//  ContentView.swift
//  Stacks
//
//  Created by AMStudent on 8/24/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image("FolkLore")
                .scaleEffect(0.5)
                .padding(-150.0)
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text("Swift Mix")
                         .font(.title)
                        .fontWeight(.semibold)
                   Text("Swift Music for Mason")
                     .font(.title)
                     .fontWeight(.light)
                     .foregroundColor(.accentColor)
                   Text("Updated Frequently")
                     .font(Font.system(.body).smallCaps())
            }
                   Text("Whether you're a fan or not, get used to frequent Taylor Swift references in Mobile App Development.")
                HStack {
                    Button { print ("Play!")}
                        label: {
                            HStack {
                                Label("Play", systemImage: "play.fill")
                            }
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
