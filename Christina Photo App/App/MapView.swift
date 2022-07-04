//
//  MapView.swift
//  Christina Photo App
//
//  Created by Charles Roberts on 7/3/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 45.777937, longitude: -93.945676)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)

        return mapRegion
    }()
    
    let locations: [Location] = Bundle.main.decode("locations.json")
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: {item in
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
        })
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
