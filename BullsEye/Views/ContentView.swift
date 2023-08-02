//
//  ContentView.swift
//  BullsEye
//
//  Created by Hector Reluz on 7/15/23.
// ctrl + i = reindent

import SwiftUI
struct ContentView: View {
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPut the Bullseye as close as you can to")
                .textCase(.uppercase)
                .bold()
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
                .kerning(2.0)
            Text(String(game.target))
                .font(.largeTitle)
                .fontWeight(.black)
                .kerning(-1.0)
            HStack {
                Text("1")
                    .fontWeight(.bold)
                Slider(value: $sliderValue, in: 1.0...100.0)
                Text("100")
                    .fontWeight(.bold)
            }
            Button("Hit me") {
                alertIsVisible = true
            }
            .alert(
                "Hello there!",
                isPresented: $alertIsVisible,
                actions: {
                    Button("Awesome") {
                        print("Alert closed")
                    }
                },
                message: {
                    let roundedValue = Int(sliderValue.rounded())
                    Text("""
                        The slider's value is \(roundedValue).
                        You scored \(game.points(sliderValue: roundedValue)) points this round.
                        """)
                }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
