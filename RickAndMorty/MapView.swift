//
//  MapView.swift
//  RickAndMorty
//
//  Created by Ron Woodbury on 11/19/21.

// ********************************************
// A simple map view - just for fun!
// ********************************************

import SwiftUI
import MapKit



struct MapView: View {


    // Determine region and coordinates for a simple map
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 37.095169,
            longitude: -113.575974
        ),
        span: MKCoordinateSpan(
            latitudeDelta: 0.05,
            longitudeDelta: 0.05
        )
    )

    
    // Load the map into a view
    var body: some View {
        Map(coordinateRegion: $region)
    }
}


struct MortysMapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}


