//
//  WeatherManager.swift
//  FindWeather
//
//  Created by Span Technology Services on 16/08/22.
//

import Foundation

struct WeatherManager{
    
    func fetchWeather(city: String?){
        if let city = city{
            //url
            let urlString = "https://api.weatherapi.com/v1/current.json?key=4e0772ea2dba4e98975111642221108&q=\(city)&aqi=no"
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
                    let decoder = JSONDecoder()
                    do{
                        let decodedData = try decoder.decode(WeatherData.self, from: safeData)
                        print(decodedData.current.temp_c)
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
