//
//  ContentView.swift
//  HabitTracker
//
//  Created by Zach Mommaerts on 10/9/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var habits = Habits()
    @State private var showAddForm = false
    
    var body: some View {
        NavigationView {
            List(habits.habitList) { habit in
                NavigationLink() {
                    HabitDetailedView(habit: habit)
                } label: {
                    Text(habit.title)
                }
            }
            .navigationTitle("Habit Trax")
            .font(.largeTitle.bold())
            .toolbar {
                Button {
                    showAddForm = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showAddForm, content: {
                NewHabitFormView(habits: habits)
            })
        }
    }
}

#Preview {
    ContentView()
}
