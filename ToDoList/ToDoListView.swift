//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Paul Wagstaff on 2025-11-27.
//

import SwiftUI

struct ToDoListView: View {
    var toDos = [
        "Learn Swift!",
        "Build neat Apps!",
        "Change the World!",
        "Reach Zen!!",
        "Take a Longer Vacation",
    ]
    var body: some View {
        NavigationStack {
            List {
                ForEach(toDos, id: \.self) { toDo in
                    NavigationLink {
                        DetailView(passedValue: toDo)
                    } label: {
                        Text(toDo)
                    }

                }
            }
            .navigationTitle("To Do List")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain)
        }
    }
}

#Preview {
    ToDoListView()
}
