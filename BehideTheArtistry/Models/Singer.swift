//
//  Singer.swift
//  BehideTheArtistry
//
//  Created by Hien Nguyen Minh on 04/08/2023.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let singer = try? JSONDecoder().decode(Singer.self, from: jsonData)

import Foundation
import MapKit

// MARK: - SingerElement
struct Singer: Codable, Hashable {
    static var sampleData = Singer(externalUrls: ExternalUrls.sampleData, genres: "Kpop", stageName: "Nayeon (나연)", birthname: "Im Na Yeon (임나연)", birthplace: "Gangdong-gu, Seoul, South Korea", coordination: Coordination.sampleData, height: "163", weight: "163", type: "artist", fact: "Nayeon’s left leg is weak due to her being in a car accident in her childhood.")
    let externalUrls: ExternalUrls
    let genres, stageName, birthname, birthplace: String
    let coordination: Coordination
    var locationCoordinate2D: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordination.latitude, longitude: coordination.longitude)
    }
    
    let height, weight, type, fact: String

    enum CodingKeys: String, CodingKey {
        case externalUrls = "external_urls"
        case genres 
        case stageName = "stage_name"
        case birthname, birthplace, coordination, height, weight, type, fact
    }
}

// MARK: - Coordination
struct Coordination: Codable, Hashable {
    static var sampleData = Coordination(latitude: 37, longitude: 127)
    let latitude, longitude: Double
}

// MARK: - ExternalUrls
struct ExternalUrls: Codable, Hashable {
    static var sampleData = ExternalUrls(image: "https://kprofiles.com/wp-content/uploads/2023/05/NAYEON-2-900x600.jpg")
    let image: String
}

//typealias Singer = [SingerElement]


// How to decode a json file into a struct
func decodeJsonFromJsonFile(jsonFileName: String) -> [Singer] {
    
    guard let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil) else {
        fatalError("Couldn't load json file")
    }
    
    do {
        let data = try Data(contentsOf: file)
        
        let decoder = JSONDecoder()
        
        let singers = try decoder.decode([Singer].self, from: data)
        
        return singers
    } catch {
        fatalError("Couldn't decode json")
    }
}

var SINGERS = decodeJsonFromJsonFile(jsonFileName: "models.json")
