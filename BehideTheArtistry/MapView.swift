//
//  MapView.swift
//  BehideTheArtistry
//
//  Created by Hien Nguyen Minh on 04/08/2023.
//

import SwiftUI
import MapKit

struct Marker: Identifiable {
    let id = UUID()
    var location: MapMarker
}

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    
    
    @State private var region = MKCoordinateRegion()

    var body: some View {
        let markers = [Marker(location: MapMarker(coordinate: coordinate, tint: .red))]
        
        Map(coordinateRegion: $region, annotationItems: markers) {
            marker in marker.location
            }
        .onAppear {
            setRegion(coordinate)
        }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(
            coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}

