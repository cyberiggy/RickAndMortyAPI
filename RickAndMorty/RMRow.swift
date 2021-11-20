//
//  RMRow.swift
//  RickAndMorty
//
//  Created by Ron Woodbury on 11/18/21.

// ********************************************
// Creating the row view for the API list.
// ********************************************

import SwiftUI

struct RMRow: View {
    
    let rmCharacter: RMCharacter
    
    var body: some View {
        
        HStack {
            
            // ***********************************
            // AsyncImage does all of the work
            // to retrieve the image from the API.
            // ***********************************
            
            AsyncImage(url: URL(string: rmCharacter.image)) { phase in
                if let image = phase.image {
                    image
                        .resizable()
                        .scaledToFit()
                } else if phase.error != nil {
                    Text("There was an error loading the image.")
                } else {
                    ProgressView() // Spinning whel
                }
            }
            .frame(width: 40.0, height: 40.0)
            .cornerRadius(4.0)
              
            VStack(alignment: .leading) {
                Text(rmCharacter.name)
                    .foregroundColor(.teal)
                    Text("Species: " + rmCharacter.species)
                        .foregroundColor(.orange)
                        .font(.system(size:11))
            }
        }
    }
}


struct RMRow_Previews: PreviewProvider {
    static var previews: some View {
        RMRow(rmCharacter: RMCharacter(id: 1, name: "Morty", image: "morty", species: "human"))
  
    }
}
