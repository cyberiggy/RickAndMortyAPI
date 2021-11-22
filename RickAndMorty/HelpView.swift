//
//  HelpView.swift
//  RickAndMorty
//
//  Created by Ron Woodbury on 11/19/21.

// ********************************************
// A little fun with a button and and alert.
//
// Note the @State and Binding ($showingAlert)
// These are required to make changes to 
// variables in a struct.
// ********************************************

import SwiftUI




struct HelpView: View {
    
    @State private var showingAlert = false

    var body: some View {
        Button("Press for help") {
            showingAlert = true
        }
        .buttonStyle(.borderedProminent)
        
        .alert("Sorry. I'm clueless.", isPresented: $showingAlert) {
            Button("OK") {
                print("Button Pressed")
            }
        }
    }
}

struct HelpPlease_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}


