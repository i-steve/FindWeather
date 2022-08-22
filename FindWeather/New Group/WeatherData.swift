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
    
    //name
    class Location: Mappable{
        var name: String = ""
        
        required init?(map: Map) {
            
        }
        
        func mapping(map: Map) {
            name        <- map["name"]
        }
    }
    
    //temp_c
    class Current: Mappable{
        var temp_c: Int = 0
        
        required init?(map: Map) {
            
        }
        
        func mapping(map: Map) {
            temp_c      <- map["temp_c"]
        }
    }
    
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        
    }
    
}

