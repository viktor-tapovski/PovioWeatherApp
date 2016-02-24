//
//  ViewController.swift
//  PovioWeatherApp
//
//  Created by Viktor Tapovski on 22.2.16.
//  Copyright © 2016 Viktor Tapovski. All rights reserved.
//


import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var cities = [String]()

    var toPass:String!
    
    
    //@IBOutlet var textField: UITextField!
    
    //@IBOutlet var cityList: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         //labelPassedData.text = toPass
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        cell.textLabel?.text = cities[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    
}
