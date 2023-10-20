//
//  NewHabitFormView.swift
//  HabitTracker
//
//  Created by Zach Mommaerts on 10/11/23.
//

import SwiftUI

struct NewHabitFormView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var habits: Habits
    
    @State private var title = ""
    @State private var description = ""
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Activity", text: $title)
                TextField("Description", text: $description)
            }
            .navigationTitle("Add a Habit")
            .toolbar {
                Button("Save") {
                    let newHabit = Habit(title: title, description: description, timesCompleted: 0)
                    habits.habitList.append(newHabit)
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    NewHabitFormView(habits: Habits())
}
