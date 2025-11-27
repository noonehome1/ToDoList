//
//  DetailView.swift
//  ToDoList
//
//  Created by Paul Wagstaff on 2025-11-27.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text("You Are a Swifty Legend!")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
        }
        .padding()
        .navigationBarBackButtonHidden()
        
        Button("Get Back!") {
            dismiss()
        }
    }
}

#Preview {
    DetailView()
}
