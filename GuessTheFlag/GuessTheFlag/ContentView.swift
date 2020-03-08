//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Sandesh on 08/03/20.
//  Copyright © 2020 Sandesh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var isAlertShowing = false
    var body: some View {
        Button("Show Alert") {
            self.isAlertShowing = true
        }
        .alert(isPresented: $isAlertShowing) {
            Alert(title: Text("Hello"), message: Text("This is my first alert in SwiftUI"), dismissButton: .default(Text("ok")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
