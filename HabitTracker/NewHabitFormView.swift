//
//  NewHabitFormView.swift
//  HabitTracker
//
//  Created by Zach Mommaerts on 10/11/23.
//

import SwiftUI

struct NewHabitFormView: View {
    @State private var title = ""
    @State private var description = ""
    var body: some View {
        NavigationView {
            VStack {
                TextField("Activity", text: $title)
                TextField("Description", text: $description)
            }
        }
    }
}

#Preview {
    NewHabitFormView()
}
