//
//  WeatherData.swift
//  FindWeather
//
//  Created by Span Technology Services on 11/08/22.
//

import Foundation
import ObjectMapper

//struct WeatherData: Decodable {
//    let location: Location
//    let current: Current
//}
//
//struct Location: Codable{
//    let name: String
//}
//
//struct Current: Codable {
//    let temp_c: Float
//    let condition: Condition
//}
//
//struct Condition: Codable {
//    let text: String
//}



class WeatherData: Mappable{
    
    var temp_c: Int = 0
    var name: String = ""
    var text: String = ""

    required init?(map: Map)
    {
        
    }
    
    init()
    {
        
    }

    func mapping(map: Map) {
        temp_c      <- map["temp_c"]
        name        <- map["name"]
        text        <- map["text"]
    }
}

