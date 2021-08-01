//
//  Landmark.swift
//  Landmark
//
//  Created by SEAN BLAKE on 8/1/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    // image name property
    private var imageName:String
    var image: Image {
        Image(imageName)
    }
    
    //Coordinate property to structure the nested Coordinates to reflect the storage in the JSON Data structure
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
}
