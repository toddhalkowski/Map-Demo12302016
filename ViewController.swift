//
//  ViewController.swift
//  Map Demo
//
//  Created by todd d Halkowski on 12/30/16.
//  Copyright © 2016 Geneva. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController {

    @IBOutlet var Map: MKMapView!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var latitude: CLLocationDegrees =  40.7
        var longitude: CLLocationDegrees = -73.9
        
        // latDelta and lonDelta determine how much your map is zommed in by using span
        
        var latDelta:CLLocationDegrees = 0.01
        var lonDelta:CLLocationDegrees = 0.01
        
        var span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
        
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        Map.setRegion(region, animated: true)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

