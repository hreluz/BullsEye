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
            Text("89")
            HStack {
                Text("1")
                Slider(value: .constant(50), in: 1.0...100.0)
                Text("100")
            }
            Button("Hit me") {
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
