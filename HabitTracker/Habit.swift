//
//  Habit.swift
//  HabitTracker
//
//  Created by Zach Mommaerts on 10/11/23.
//

import Foundation

struct Habit: Codable, Identifiable, Equatable {
    var id = UUID()
    var title: String
    var description: String
    var timesCompleted: Int
}
