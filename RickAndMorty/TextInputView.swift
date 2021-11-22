//
//  TextInputView.swift
//  RickAndMorty
//
//  Created by Ron Woodbury on 11/21/21.

// ********************************************
// A simple TextField (input) and text
// update example.
//
// Note the @State and Binding ($name)
// These are required to make changes to
// variables in a struct.
// ********************************************

import SwiftUI

struct TextInputView: View {
    @State var name: String = ""
    
    var body: some View {
        VStack {
            TextField(" Enter your name", text: $name)
                .border(Color.teal)
                .padding(.horizontal, 50)
            
            Text("Hello:")
                .foregroundColor(.orange)
            
            Text("\(name)")
                .foregroundColor(.teal)
        }
    }
}

struct TextInputView_Previews: PreviewProvider {
    static var previews: some View {
        TextInputView()
    }
}
