//
//  ContentView.swift
//  MemoryFucker
//
//  Created by Hariz Shirazi on 2023-03-11.
//

import SwiftUI

struct ContentView: View {
    @State var currentlyFuckingMemory = false
    var body: some View {
        VStack {
            Button(action: {
                currentlyFuckingMemory = true
                // memory fucking code
                let window = UIApplication.shared.keyWindow
                while currentlyFuckingMemory && window != nil {
                    window?.snapshotView(afterScreenUpdates: false)
                }
            }, label: {
                Label("Fuck Memory!", systemImage: "memorychip")
                    //.padding()
                    .font(.largeTitle)
            })
            if currentlyFuckingMemory {
                Text("Fucking memory...")
                    .font(.headline)
                Button(action: {
                    currentlyFuckingMemory = false
                }, label: {
                    Label("MAKE IT STOP!!!", systemImage: "xmark.octagon")
                        //.padding()
                        .font(.largeTitle)
                })
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
