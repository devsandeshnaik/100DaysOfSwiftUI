//
//  Habit.swift
//  Habits
//
//  Created by Sandesh on 01/07/20.
//  Copyright © 2020 devsandesh. All rights reserved.
//

import Foundation

struct  Habit: Codable, Identifiable {
    var id = UUID()
    var name: String
    var createdDate = Date()
}
