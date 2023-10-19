//
//  ContentView.swift
//  HabitTracker
//
//  Created by Zach Mommaerts on 10/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var habits = Habits().habitList
    var body: some View {
        NavigationView {
            List(habits) { habit in
                NavigationLink() {
                    HabitDetailedView(habit: habit)
                } label: {
                    Text(habit.title)
                }
            }
            .navigationTitle("Habit Trax")
            .font(.largeTitle.bold())
        }
    }
}

#Preview {
    ContentView()
}
