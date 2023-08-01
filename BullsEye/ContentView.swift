//
//  ContentView.swift
//  BullsEye
//
//  Created by Hector Reluz on 7/15/23.
// ctrl + i = reindent

import SwiftUI
struct ContentView: View {
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPut the Bullseye as close as you can to")
                .textCase(.uppercase)
                .bold()
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
                .kerning(2.0)
            Text("89")
                .font(.largeTitle)
                .fontWeight(.black).kerning(-1.0)
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
                    let roundedValue: Int = Int(sliderValue.rounded())
                    Text("The slider's value is \(sliderValue), and rounded value is \(roundedValue).")
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
