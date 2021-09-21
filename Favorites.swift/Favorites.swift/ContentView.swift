//
//  ContentView.swift
//  Favorites.swift
//
//  Created by AMStudent on 9/10/21.
//
import SwiftUI

struct ContentView: View {
    
    @State private var BorderlandsIsVisible: Bool = false
    @State private var PizzaIsVisible: Bool = false
    @State private var BlueIsVisible: Bool = false
    @State private var Deadpool2IsVisible: Bool = false
    @State private var WeekendIsVisible: Bool = false
  var body: some View {
    VStack {
        VStack {
            VStack {
              HStack {
              }
              Button(action: {
                self.BorderlandsIsVisible = true
              }) {
                Text("Games")
                    .padding(20.0)
                    .frame(width: 300.0, height: 50.0)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .cornerRadius(21.0)

              }
              .alert(isPresented: $BorderlandsIsVisible, content: {
                return Alert(title: Text("Borderlands"))
              })
            }
            Button(action: {
                self.PizzaIsVisible = true
            }) {
                Text("Food")
                    .padding(20.0)
                    .frame(width: 300.0, height: 50.0)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .cornerRadius(21.0)
            }
            .alert(isPresented: $PizzaIsVisible, content: {
                return Alert(title: Text("Pizza"))
            })
        
        Button(action: {
            self.BlueIsVisible = true
        }) {
            Text("Color")
                .padding(20.0)
                .frame(width: 300.0, height: 50.0)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .cornerRadius(21.0)
      }
        .alert(isPresented: $BlueIsVisible, content: {
            return Alert(title: Text("Blue"))
    })
        }
        Button(action: {
            self.Deadpool2IsVisible = true
        }) {
            Text("Movie")
                .padding(20.0)
                .frame(width: 300.0, height: 50.0)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .cornerRadius(21.0)
        }
        .alert(isPresented: $Deadpool2IsVisible, content: {
            return Alert(title: Text("Deadpool2"))
        })
        Button(action: {
            self.WeekendIsVisible = true
        }) {
            Text("Artist")
                .padding(20.0)
                .frame(width: 300.0, height: 50.0)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .cornerRadius(21.0)
        }
        .alert(isPresented: $WeekendIsVisible, content: {
            return Alert(title: Text("Weekend"))
        })
    }
  }
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    ContentView()
      .previewLayout(.fixed(width: 568, height: 320))
  }
}
}
