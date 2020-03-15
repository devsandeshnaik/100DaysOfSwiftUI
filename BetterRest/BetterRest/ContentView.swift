//
//  ContentView.swift
//  BetterRest
//
//  Created by Sandesh on 15/03/20.
//  Copyright © 2020 Sandesh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var wakeup = Date()
    var body: some View {
        DatePicker("Select date", selection: $wakeup, in: Date()..., displayedComponents: .hourAndMinute	)
            .labelsHidden()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
