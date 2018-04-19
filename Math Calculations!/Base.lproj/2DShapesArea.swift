//
//  2DShapesArea.swift
//  Math Calculations!
//
//  Created by Myat Thuzar Kyaw on 1/16/18.
//  Copyright © 2018 Myat Thuzar Kyaw. All rights reserved.
//

import Foundation
import UIKit

class TwoDShapesArea: UIViewController{
    @IBOutlet weak var triangleBase: UITextField!
    @IBOutlet weak var triangleHeight: UITextField!
    @IBOutlet weak var triangleArea: UITextField!
    
    @IBOutlet weak var rectLength: UITextField!
    @IBOutlet weak var rectWidth: UITextField!
    @IBOutlet weak var rectArea: UITextField!
    
    @IBOutlet weak var trapeziumA: UITextField!
    @IBOutlet weak var trapeziumB: UITextField!
    @IBOutlet weak var trapeziumH: UITextField!
    @IBOutlet weak var trapeziumArea: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}
    @IBAction func triangleButton(_ sender: Any) {
        triangleArea.text = String(0.5 * Double((triangleBase.text)!)! * Double((triangleHeight.text)!)!)
    }
    @IBAction func rectButton(_ sender: Any) {
        rectArea.text = String(Double((rectLength.text)!)! * Double((rectWidth.text)!)!)
    }
    @IBAction func trapeziumButton(_ sender: Any) {
        trapeziumArea.text = String((Double((trapeziumA.text)!)!) * Double((trapeziumB.text)!)! * Double((trapeziumH.text)!)! / 2)
    }
    
}
