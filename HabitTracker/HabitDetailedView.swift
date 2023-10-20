//
//  HabitDetailedView.swift
//  HabitTracker
//
//  Created by Zach Mommaerts on 10/17/23.
//

import SwiftUI

struct HabitDetailedView: View {
    var habit: Habit
    @ObservedObject var habits: Habits
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text(habit.description)
                } header: {
                    Text("Description")
                }
                
                Section {
                    HStack {
                        Text("\(habit.timesCompleted)")
                        Button {
                            replaceHabit()
                        } label: {
                            Image(systemName: "plus")
                        }
                    }
                } header: {
                    Text("Times Completed")
                }
            }
            .navigationTitle(habit.title)
        }
    }
    
    func replaceHabit() {
        var newHabit = habit
        newHabit.timesCompleted += 1
        var index = habits.habitList.firstIndex(of: habit) ?? 0
        habits.habitList[index] = newHabit
    }
}

#Preview {
    HabitDetailedView(habit: Habit(title: "title", description: "description", timesCompleted: 1), habits: Habits())
}
