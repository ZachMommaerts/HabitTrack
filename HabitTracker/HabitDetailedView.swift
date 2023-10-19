//
//  HabitDetailedView.swift
//  HabitTracker
//
//  Created by Zach Mommaerts on 10/17/23.
//

import SwiftUI

struct HabitDetailedView: View {
    var habit = Habit(title: "title", description: "description")
    
    var body: some View {
        NavigationView {
            Form {
                Text(habit.description)
            }
            .navigationTitle(habit.title)
        }
    }
}

#Preview {
    HabitDetailedView()
}
