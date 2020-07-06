//
//  ContentView.swift
//  Habits
//
//  Created by Sandesh on 01/07/20.
//  Copyright © 2020 devsandesh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var habits = [Habit]()

    var body: some View {
        List(habits) { habit in
            Text(habit.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
