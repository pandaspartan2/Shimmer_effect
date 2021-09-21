//
//  Weather challenge.swift
//  swift UI
//
//  Created by AMStudent on 8/23/21.
//

import SwiftUI

struct Weather_challenge: View {
    var body: some View {
       
        VStack(alignment: .center) {
                Image(systemName: "sun.max.fill")
                   
                    .resizable(capInsets: EdgeInsets(top: -3.0, leading: 8.0, bottom: 0.0, trailing: 0.0))
                    .foregroundColor(Color.yellow)
                    .frame(width: 40.0, height: /*@START_MENU_TOKEN@*/40.0/*@END_MENU_TOKEN@*/)
                Text("Sunny")
                    .foregroundColor(Color.white)
            Text("H:61° L:43°")
                .foregroundColor(Color(red: 1.0, green: 3.5, blue: 5.0, opacity: 1.0))
                    .multilineTextAlignment(.center)
                
                
            }
       
            .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.blue]), startPoint: /*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
                            .padding(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .frame(width: 100.0, height: 100.0))
        }
    }

struct Weather_challenge_Previews: PreviewProvider {
    static var previews: some View {
        Weather_challenge()
    }
}
