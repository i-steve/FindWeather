//
//  ViewController.swift
//  FindWeather
//
//  Created by Span Technology Services on 11/08/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var searchField: UITextField!
    @IBOutlet var temperatureLabel: UILabel!
    @IBOutlet var weatherLabel: UILabel!
    @IBOutlet var weatherImage: UIImageView!
    @IBOutlet var locationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchField.delegate = self
    }
    
    let weatherManager = WeatherManager()
    //let weatherData = WeatherData(from: <#Decoder#>)
    
    @IBAction func searchPressed(_ sender: UIButton) {
        weatherManager.fetchWeather(city: searchField.text)
        searchField.endEditing(true)  // dismisses the keyboard
        
       // temperatureLabel.text = String(weatherData.current.temp_c)
       // locationLabel.text = weatherData.location.name
       // weatherLabel.text = weatherData.current.condition.text
    }
    
    
    //Search Field Delegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        weatherManager.fetchWeather(city: searchField.text)
        searchField.endEditing(true)  // dismisses the keyboard
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != ""{
            return true
        }else{
            textField.placeholder = "Type here"
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.text = ""
    }
    
}

