//
//  RMApiView.swift
//  RickAndMorty
//
//  Created by Ron Woodbury on 11/19/21.

// ********************************************
// API manager. RMApiView calls RMFetcher
// This file builds the list with the API data
// using RMRow for the row content.
// ********************************************

import SwiftUI

struct RMApiView: View {
    
    // Implement style changes to NavBarTitle
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor.systemTeal,
            .font: UIFont(name:"Hoefler Text", size: 32)!]
        }
    
    // Beginning of relevant code
    @ObservedObject var fetcher = RMFetcher()
    
    var body: some View {
        
            NavigationView {
                VStack {
                    List(fetcher.rmCharacters) { RMCharacter in
                        NavigationLink(destination: RMDetailView(rmCharacter: RMCharacter))
                        {
                        RMRow(rmCharacter: RMCharacter)
                        }
                    }
                }.navigationBarTitle("Rick & Morty Characters")
            }
    }
    
    
    
    // *****************************************************
    // Fetch the API data
    // *****************************************************
    public class RMFetcher: ObservableObject {
        
        @Published var rmCharacters = [RMCharacter]()
        
        init(){
            load()
        }
        
        func load() {
            let url = URL(string: "https://rickandmortyapi.com/api/character/")!
            
            URLSession.shared.dataTask(with: url) {(data,response,error) in
            do{
                if let d = data {
                    let rmResponse = try
                        JSONDecoder().decode(RMResponse.self, from: d)
                        DispatchQueue.main.async {
                        self.rmCharacters = rmResponse.rmCharacters
                        
                            
                        // **************************************
                        // Print JSON Data - Just like old times!
                        // **************************************
                         if let jsonData = data {
                            if let jsonString = String(data: jsonData, encoding: .utf8) {
                                print(jsonString)
                            }
                         }
                            
                    }
                    
                }else {
                    print("No Data")
                }
            } catch {
                    print("Error")
                }
            }.resume()
        }
    }
}




struct MortysApi_Previews: PreviewProvider {
    static var previews: some View {
        RMApiView()
    }
}




// Backup copy of JSON file stored at https://api.jsonbin.io/b/619ad1740ddbee6f8b0fe0fd
