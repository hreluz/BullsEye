//
//  ContentView.swift
//  BullsEye
//
//  Created by Hector Reluz on 7/15/23.
// ctrl + i = reindent

import SwiftUI
struct ContentView: View {
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
                Slider(value: .constant(50), in: 1.0...100.0)
                Text("100")
                    .fontWeight(.bold)
            }
            Button("Hit me") {
                print("Whatever we want")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
