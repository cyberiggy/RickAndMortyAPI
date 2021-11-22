//
//  RMHome.swift
//  RickAndMory
//
//  Created by Ron Woodbury on 11/18/21.

// ********************************************
// This is the initial target called by
// RickAndMortyApp.swift
//
// TabView builds a tab view controller.
//
// Each tab calls a corresponding struct.
//
// Note: tag(n) & selection work together
// to track the tab current tab/view.
//
// The initial value of selection determines
// which tab is displayed on start up.
// ********************************************

import Foundation
import SwiftUI
import Combine

struct RMHome: View {
    
    @State private var selection =  0
    
    var body: some View {
        
                
        TabView(selection: $selection) {
            
                RMApiView()
                .tabItem {
                    Image(systemName: "icloud.and.arrow.down")
                }
            .tag(0)
                
            
                LocalImageView()
                .tabItem{
                    Image(systemName: "photo.circle")
                }
            .tag(1)

            
                MapView()
                .tabItem{
                    Image(systemName: "map.fill")
                }
            .tag(2)
            
            
                HelpView()
                .tabItem{
                    Image(systemName: "questionmark.circle.fill")
                }
            .tag(3)
    
        
        
                TextInputView()
                .tabItem{
                    Image(systemName: "doc.text.fill")
                }
            .tag(4)
        }.accentColor(.teal)
    
    
    }
 
}



struct RickAndMortyApp_Previews: PreviewProvider {
    static var previews: some View {
            RMHome()
    }
}
