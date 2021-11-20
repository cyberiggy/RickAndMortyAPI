//
//  RickAndMortyApp.swift
//  RickAndMorty
//
//  Created by Ron Woodbury on 11/18/21.

// ********************************************
// Initial swift file called by the compiler,
// which subsequently calls RMHome.
// ********************************************

import SwiftUI

@main
struct RickAndMortyApp: App {
    var body: some Scene {
        WindowGroup {
            RMHome()
        }
    }
}
