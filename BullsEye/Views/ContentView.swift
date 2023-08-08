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
        ZStack {
            Color("BackgroundColor")
            .ignoresSafeArea()
            VStack {
                Text("🎯🎯🎯\nPut the Bullseye as close as you can to".uppercased())
                    .bold()
                    .multilineTextAlignment(.center)
                    .lineSpacing(4.0)
                    .font(.footnote)
                    .kerning(2.0)
                    .padding(.horizontal, 30)
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
                }.padding()
                Button("Hit me".uppercased()) {
                    alertIsVisible = true
                }
                .padding(20.0)
                .background(
                    ZStack {
                        Color("ButtonColor")
                        LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                    }
                )
                .foregroundColor(.white)
                .cornerRadius(21)
                .bold()
                .font(.title3)
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
