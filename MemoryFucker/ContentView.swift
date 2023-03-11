//
//  ContentView.swift
//  MemoryFucker
//
//  Created by Hariz Shirazi on 2023-03-11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: {
                // memory fucking code
                let window = UIApplication.shared.keyWindow
                while true && window != nil {
                    window?.snapshotView(afterScreenUpdates: false)
                }
            }, label: {
                Label("Fuck Memory!", systemImage: "memorychip")
                    .padding()
            })
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
