//
//  ContentView.swift
//  Swift ui Bullseye
//
//  Created by AMStudent on 8/30/21.
//
// 485AFC
import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    @State private var sliderValue: Double = 50
    @State private var game: Game = Game()
    var body: some View {
        ZStack {
            Backgroundview(game: $game)
            VStack {
                InstructionsView(game: $game)
            SliderView(sliderValue: $sliderValue)
            HitMeButton(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)
            
            }
        }
    }
}

struct InstructionsView: View {
    @Binding var game: Game
    
    var body: some View {
        VStack {
        InstructionText(text: "🎯🎯🎯\nPut the Bullseye as close as you can to")
            .padding(.leading, 30.0)
            .padding(.trailing, 30.0)
        BigNumberText(text: String(game.target))
        }
    }
}

struct SliderView: View {
    @Binding var sliderValue: Double
   
    var body: some View {
        HStack  {
            SliderlabelText(text: "1")
            Slider(value: self.$sliderValue, in: 1.0...100.0)
            SliderlabelText(text: "100")
        }
        .padding()
    }
}

struct HitMeButton: View {
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
   
    var body: some View {
        Button(action: {
            print("Hello, swiftUI")
            self.alertIsVisible = true
        }) {
        Text("HIT ME")
            .bold()
            .font(.title3)
        }
        .padding(20.0)
            .background(
                ZStack {
                    Color("ButtonColor")
                    LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
            }
        )
        .foregroundColor(Color/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
        .cornerRadius(21.0)
        .overlay(
            RoundedRectangle(cornerRadius: 21.0)
                .strokeBorder(Color.white, lineWidth: 2.0)
        )
            .alert(isPresented: $alertIsVisible, content: {
                let roundedValue: Int = Int(self.sliderValue.rounded())
                return Alert(title: Text("Hello there"), message: Text("The sliders value is \(roundedValue).\n" + "You scored \(self.game.points(sliderValue: roundedValue)) points this round."), dismissButton: .default(Text("Awesome")))
            })
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}

