//
//  WeatherManager.swift
//  FindWeather
//
//  Created by Span Technology Services on 16/08/22.
//

import Foundation
import ObjectMapper

struct WeatherManager{
    
    func fetchWeather(city: String?){
        if let city = city{
            //url
            let urlString = "https://api.weatherapi.com/v1/current.json?key=724ff428144746f89d574725222208&q=\(city)&aqi=no"
            let url = URL(string: urlString)
            performCall(url: url)
        }
    }
    
    func performCall(url: URL?){
        //session task
        if let url = url{
            //url session
            let session = URLSession(configuration: .default)
            
            let Task = session.dataTask(with: url) { (data, responce, error) in
                
                if error != nil{
                    print(error!)
                    return
                }
                
                if let safeData = data{
                    
                    do{
                        let data = try JSONSerialization.jsonObject(with: safeData, options: .mutableContainers)
                        let parsedData = Mapper<WeatherData>().map(JSON: data as! [String : Any])
                        print(parsedData)
                    }
                    catch{
                        print(error)
                    }
                }
            }
            
            //start session
            Task.resume()
        }
    }
    
}
