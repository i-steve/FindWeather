//
//  WeatherData.swift
//  FindWeather
//
//  Created by Span Technology Services on 11/08/22.
//

import Foundation
import ObjectMapper

struct WeatherData: Decodable {
    let location: Location
    let current: Current
}

struct Location: Codable{
    let name: String
}

struct Current: Codable {
    let temp_c: Float
    let condition: Condition
}

struct Condition: Codable {
    let text: String
}



//class WeatherData1: Mappable{
//
//    let location: Location
//    let current: Current
//
//    struct Location: Codable{
//        let name: String
//    }
//
//    struct Current: Codable {
//        let temp_c: Int
//        let condition: Condition
//    }
//
//    struct Condition: Codable {
//        let text: String
//    }
//
//    required init?(map: Map) {
//        <#code#>
//    }
//
//    func mapping(map: Map) {
//        temp_c <- map["current.temp_c"]
//    }
//}

