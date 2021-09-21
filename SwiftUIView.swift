//
//  SwiftUIView.swift
//  Stacks
//
//  Created by AMStudent on 8/24/21.
//

import SwiftUI

struct Contentview: View {
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOS AS YOU CAN TO")
            Text("89")
            Slider(value: .constant(50), in: 1.0...100.0)
        }
        
    }
}

struct Contentview_Previews: PreviewProvider {
    static var previews: some View {
        Contentview()
    }
}
