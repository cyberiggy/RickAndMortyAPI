//
//  RMDetailView.swift
//  RickAndMorty
//
//  Created by Ron Woodbury on 11/18/21.

// ********************************************
// Detail page displayed when selecting
// one of the rows in the API list.
// The focus of this file is AsyncImage()
// ********************************************

import SwiftUI

struct RMDetailView: View {
    
    let rmCharacter: RMCharacter
    
    var body: some View {
        
        // ***********************************
        // AsyncImage does all of the work
        // to retrieve the image from the API.
        // ***********************************
        
        VStack {
            AsyncImage(url: URL(string: rmCharacter.image)) { phase in
                if let image = phase.image {
                    image
                        .resizable()
                        .scaledToFit()
                    } else if phase.error != nil {
                        Text("There was an error loading the image.")
                    } else {
                        ProgressView() // Spinning wheel
                    }
                }
                .frame(width: 300, height: 300)
                .cornerRadius(6)
        
            Text(rmCharacter.name)
                .font(.system(size:24))
                .foregroundColor(.teal)
        }
    }
}


struct RMDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RMDetailView(rmCharacter: RMCharacter(id: 0, name: "Morty", image: "morty", species: "human"))
           
    }
}
