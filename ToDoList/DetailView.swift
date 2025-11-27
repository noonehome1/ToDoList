//
//  DetailView.swift
//  ToDoList
//
//  Created by Paul Wagstaff on 2025-11-27.
//

import SwiftUI

struct DetailView: View {
    var passedValue: String
    //    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Spacer()
            Text("You Are a Swifty Legend! And you passed the value of '\(passedValue)'")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
        }
        .padding()

        //        .navigationBarBackButtonHidden()
        //
        //        Button("Get Back!") {
        //            dismiss()
        //        }
    }
}

#Preview {
    DetailView(passedValue: "Preview Item 1")
}
