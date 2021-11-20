//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Ron Woodbury on 11/18/21.

// ********************************************
// This data we are accessing from the API
// for each character.
// This is one level removed from the base
// level in the JSON data.
// RMResponse() is the root level.
// ********************************************

import SwiftUI
import Combine

struct RMCharacter: Decodable, Identifiable {
    public var id: Int
    public var name: String
    public var image: String
    public var species: String
    
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case image = "image"
        case species = "species"
    }
    
}
