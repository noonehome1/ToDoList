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
    @State private var sheetIsPresented: Bool = false
    var body: some View {
        NavigationStack {
            List {
                ForEach(toDos, id: \.self) { toDo in
                    NavigationLink {
                        DetailView(toDo: toDo)
                    } label: {
                        Text(toDo)
                    }
                    .font(.title2)
                }
            }
            .navigationTitle("To Do List")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain)
            .sheet(isPresented: $sheetIsPresented, content: {
//            .fullScreenCover(isPresented: $sheetIsPresented, content: { // To fill the whole screen!
                NavigationStack {
                    DetailView(toDo: "")
                }
            })
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        sheetIsPresented.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }

                }
            }
        }
    }
}

#Preview {
    ToDoListView()
}
