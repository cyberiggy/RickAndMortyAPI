//
//  RMResponse.swift
//  RickAndMorty
//
//  Created by Ron Woodbury on 11/18/21.

// ********************************************
// Root level of the JSON Data in the API.
// We start here and drill down one more
// level to the character date in the API.
// ********************************************

import SwiftUI

struct RMResponse: Decodable {
    public var rmCharacters: [RMCharacter]
    
    enum CodingKeys: String, CodingKey {
        case rmCharacters = "results"
    }
}

