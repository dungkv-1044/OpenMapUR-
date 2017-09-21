//
//  ViewController.swift
//  DemoOpenURL
//
//  Created by Khuat Van Dung on 9/21/17.
//  Copyright © 2017 Khuat Van Dung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let latitude = 21.023369
    let longitude = 105.790073
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapped(_ sender: Any) {
        //Working in Swift new versions.
        if UIApplication.shared.canOpenURL(URL(string: "comgooglemaps://")!)
        {
            let urlString = "http://maps.google.com/?daddr=\(latitude),\(longitude)&directionsmode=driving"
        
            // use bellow line for specific source location
        
            //let urlString = "http://maps.google.com/?saddr=\(sourceLocation.latitude),\(sourceLocation.longitude)&daddr=\(destinationLocation.latitude),\(destinationLocation.longitude)&directionsmode=driving"
        
            UIApplication.shared.openURL(URL(string: urlString)!)
        } else
        {
            //let urlString = "http://maps.apple.com/maps?saddr=\(sourceLocation.latitude),\(sourceLocation.longitude)&daddr=\(destinationLocation.latitude),\(destinationLocation.longitude)&dirflg=d"
            let urlString = "http://maps.apple.com/maps?daddr=\(latitude),\(longitude)&dirflg=d"
        
            UIApplication.shared.openURL(URL(string: urlString)!)
        }


    }

}
