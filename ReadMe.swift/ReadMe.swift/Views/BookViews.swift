//
//  BookViews.swift
//  ReadMe.swift
//
//  Created by AMStudent on 9/14/21.
//

import SwiftUI

extension Book {
    struct Image: View {
        let title: String
        
        var body: some View {
            let symbol = SwiftUI.Image(title)
            ?? .init(systemName: "Book")
                
            symbol
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .font(Font.title.weight(.light))
                .foregroundColor(.secondary)
        }
    }
}

struct Book_Previews: PreviewProvider {
    static var previews: some View {
        
        VStack {
            Book.Image(title: Book().title)
            Book.Image(title: "")
        }
    }
}
extension Image {
    init?(title: String) {
        guard let character = title.first else {
            return nil
        }
        let symbolName = "\(character.lowercased()).square"
        
        guard UIImage(systemName: symbolName) != nil else {
            return nil
        }
        
        self.init(systemName: symbolName)
    }
}
