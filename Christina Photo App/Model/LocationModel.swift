//
//  LocationModel.swift
//  Christina Photo App
//
//  Created by Charles Roberts on 7/3/22.
//

import Foundation
import MapKit

struct Location: Codable, Identifiable {
    var id: String
    var name: String
    var latitude: Double
    var longitude: Double
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
