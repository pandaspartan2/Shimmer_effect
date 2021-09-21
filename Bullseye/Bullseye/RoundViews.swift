//
//  RoundViews.swift
//  Bullseye
//
//  Created by AMStudent on 9/8/21.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    var systemName: String
    
    var body: some View {
    Image(systemName: systemName)
        .font(.title)
        .foregroundColor(Color("TextColor"))
        .frame(width: 56.0, height: 56.0)
        .overlay(
            Circle()
                .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
        )
    }
}

struct RoundedImageViewFilled: View {
    var systemName: String
    
    var body: some View {
    Image(systemName: systemName)
        .font(.title)
        .foregroundColor(Color("ButtonFIlledTextColor"))
        .frame(width: 56.0, height: 56.0)
        .background(
        Circle()
            .fill(Color("ButtonFIlledBackgroundColor"))
        )
    }
}

struct RoundedrectTextView: View {
    var text: String
    
    var body: some View {
    Text(text)
        .kerning(-0.2)
        .bold()
        .font(.title3)
        .frame(width: 68.0, height: 56.0)
        .foregroundColor(Color("TextColor"))
        .overlay(
            RoundedRectangle(cornerRadius: 21.0)
                .stroke(lineWidth: 2.0)
                .foregroundColor(Color("ButtonStrokeColor"))
        )
    }
}


struct PreviewView: View {
    var body: some View {
        VStack(spacing: 10) {
        RoundedImageViewStroked(systemName: "arrow.counterclockwise")
        RoundedImageViewFilled(systemName: "list.dash")
        RoundedrectTextView(text: "100")
        }
    }
}
    
struct RoundViews_Previews: PreviewProvider {
    static var previews: some View {
    PreviewView()
    PreviewView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
