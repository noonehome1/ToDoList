//
//  DetailView.swift
//  ToDoList
//
//  Created by Paul Wagstaff on 2025-11-27.
//

import SwiftUI

struct DetailView: View {
    @State var toDo: String
    @State private var reminderIsOn: Bool = false
    @State private var completedIsOn: Bool = false
//    @State private var dueDate: Date = Date.now + 60*60*24
    @State private var dueDate: Date = Calendar.current.date(byAdding: .day, value: 1, to: Date.now)!
    @State private var notes: String = ""
    
    @Environment(\.dismiss) private var dismiss // Save this for manual control of return to previous navigation view. Pairs with some "dismiss()" action to cause the return.
    
    var body: some View {
        List {
            TextField("Enter ToDo Here!", text: $toDo)
            
            Toggle("Set Reminder:", isOn: $reminderIsOn)
                .padding(.top)
                .listRowSeparator(.hidden)
            
            DatePicker("Date:", selection: $dueDate)
                .padding(.bottom)
                .disabled(!reminderIsOn)
                .listRowSeparator(.hidden)
            
            Text("Notes:")
            TextField("Notes?", text: $notes, axis: .vertical)
            
            Toggle("Completed:", isOn: $completedIsOn)
                .padding(.top)
                .listRowSeparator(.hidden)
        }
        .font(.title2)
        .listStyle(.plain)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button("Cancel") {
                    dismiss()
                }
            }
            ToolbarItem(placement: .topBarTrailing) {
                Button("Save") {
                    // TODO: Toolbar Item Save Action Here
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        DetailView(toDo: "")
    }
}
