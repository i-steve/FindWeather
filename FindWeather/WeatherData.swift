//
//  WeatherData.swift
//  FindWeather
//
//  Created by Span Technology Services on 11/08/22.
//

import Foundation

struct WeatherData: Codable {
    let location: Location
    let current: Current
}

struct Location: Codable{
    let name: String
}

struct Current: Codable {
    let temp_c: Int
    let condition: Condition
}

struct Condition: Codable {
    let text: String
}

