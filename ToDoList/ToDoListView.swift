//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Paul Wagstaff on 2025-11-27.
//

import SwiftUI

struct ToDoListView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    DetailView()
                } label: {
                    Image(systemName: "eye")
                    Text("Goto the new view!")
                }
                .buttonStyle(.borderedProminent)
                .tint(.green)

            }
            .padding()
        }
    }
}

#Preview {
    ToDoListView()
}
