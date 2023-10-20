//
//  Habits.swift
//  HabitTracker
//
//  Created by Zach Mommaerts on 10/13/23.
//

import Foundation

class Habits: ObservableObject {
    @Published var habitList = [Habit]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(habitList) {
                UserDefaults.standard.set(encoded, forKey: "habitList")
            }
        }
    }
    
    init() {
        if let savedHabitList = UserDefaults.standard.data(forKey: "habitList") {
            if let decodedHabitList = try? JSONDecoder().decode([Habit].self, from: savedHabitList) {
                habitList = decodedHabitList
            }
        } else {
            habitList = []
        }
    }
}
