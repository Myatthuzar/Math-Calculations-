//
//  CircularShapesOne.swift
//  Math Calculations!
//
//  Created by Myat Thuzar Kyaw on 1/16/18.
//  Copyright © 2018 Myat Thuzar Kyaw. All rights reserved.
//

import Foundation
import UIKit

class CircularShapesOne: UIViewController{
    @IBOutlet weak var firstRadius: UITextField!
    @IBOutlet weak var firstArea: UITextField!
    @IBOutlet weak var secondDiameter: UITextField!
    @IBOutlet weak var secondCircumference: UITextField!
    @IBOutlet weak var thirdRadius: UITextField!
    @IBOutlet weak var thirdArea: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func firstCalculate(_ sender: Any) {
        firstArea.text = String(describing: (pow((Decimal(Double(firstRadius.text!)!)), 2)) * 3.14)
    }

    @IBAction func secondCalculate(_ sender: Any) {
        secondCircumference.text = String(Double((secondDiameter
        .text)!)! * 3.14)
    }
    @IBAction func thirdCalculate(_ sender: Any) {
        thirdArea.text = String(describing: (pow((Decimal(Double(thirdRadius.text!)!)), 2)) * 3.14 * 4)
    }
    
}
