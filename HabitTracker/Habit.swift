//
//  Habit.swift
//  HabitTracker
//
//  Created by Zach Mommaerts on 10/11/23.
//

import Foundation

struct Habit: Codable, Identifiable {
    var id = UUID()
    var title: String
    var description: String
}
