//
//  CircularShapesTwo.swift
//  Math Calculations!
//
//  Created by Myat Thuzar Kyaw on 1/16/18.
//  Copyright © 2018 Myat Thuzar Kyaw. All rights reserved.
//

import Foundation
import UIKit

class CircularShapesTwo: UIViewController{
    @IBOutlet weak var sphereRadius: UITextField!
    @IBOutlet weak var sphereVolume: UITextField!
    @IBOutlet weak var cylinderRadius: UITextField!
    @IBOutlet weak var cylinderHeight: UITextField!
    @IBOutlet weak var cylinderVolume: UITextField!
    @IBOutlet weak var cylinderRadiusTwo: UITextField!
    @IBOutlet weak var cylinderHeightTwo: UITextField!
    @IBOutlet weak var cylinderArea: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sphereButton(_ sender: Any) {
        sphereVolume.text = String(describing: (pow((Decimal(Double(sphereRadius.text!)!)), 3)) * 3.14 * (4/3))
    }
    
    @IBAction func cylinderVolumeButton(_ sender: Any) {
        cylinderVolume.text = String(describing: (pow((Decimal(Double(cylinderRadius.text!)!)), 2)) * 3.14 * Decimal(Double((cylinderHeight.text)!)!))
        
    }
    @IBAction func cylinderAreaButton(_ sender: Any) {
        cylinderArea.text = String(describing: ((pow((Decimal(Double(cylinderRadiusTwo.text!)!)), 2)) * 3.14 * 2) + (2 * 3.14 * Decimal(Double((cylinderHeightTwo.text)!)!) * Decimal(Double((cylinderRadiusTwo.text)!)!)))
    }
}
