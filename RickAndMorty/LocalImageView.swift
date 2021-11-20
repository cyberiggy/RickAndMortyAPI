//
//  LocalImageView.swift
//  RickAndMorty
//
//  Created by Ron Woodbury on 11/19/21.

// ********************************************
// A simple view with an a local image. No API.
// ********************************************

import SwiftUI

struct LocalImageView: View {
    
    var body: some View {

        VStack {
            Image("rickAndMorty")
                .frame(width: 375, height: 275)
                .cornerRadius(12)
            Text("Rick and Morty")
                .foregroundColor(.teal)
                .font(.system(size:25))
            Text("Local image from Assets folder")
                .foregroundColor(.orange)
            }
    }
}


struct MortysSecondView_Previews: PreviewProvider {
    static var previews: some View {
        LocalImageView()
    }
}
