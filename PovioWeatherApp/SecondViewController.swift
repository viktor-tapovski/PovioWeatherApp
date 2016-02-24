//
//  SecondViewController.swift
//  PovioWeatherApp
//
//  Created by Viktor Tapovski on 23.2.16.
//  Copyright © 2016 Viktor Tapovski. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController : UIViewController {
    
    var toPass:String!
    
    @IBOutlet weak var cityNameInput: UITextField!
    
    
    @IBAction func addCityToList(sender: UIButton) {
    }
    
    override func prepareForSegue(segue: (UIStoryboardSegue!), sender: AnyObject!) {
        if (segue.identifier == "segueConnect") {
            let svc = segue!.destinationViewController as! SecondViewController;
            
            svc.toPass = cityNameInput.text
            
        }
    }
    
    
    override func viewDidLoad() {
        //labelPassedData.text = toPass
    }

    
    func getWeather(urlString : String) {
        let url = NSURL(string: urlString)
        _ = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
            dispatch_async(dispatch_get_main_queue(), {
                //self.setLabels(data)
            })
        }
    }
    
}