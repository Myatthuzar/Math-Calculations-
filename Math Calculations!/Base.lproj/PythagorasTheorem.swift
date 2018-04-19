//
//  PythagorasTheorem.swift
//  Math Calculations!
//
//  Created by Myat Thuzar Kyaw on 1/13/18.
//  Copyright © 2018 Myat Thuzar Kyaw. All rights reserved.
//

import Foundation
import UIKit

class Pythagoras: UIViewController {

    @IBOutlet weak var firstValueA: UITextField!
    @IBOutlet weak var firstValueB: UITextField!
    @IBOutlet weak var resultC: UITextField!
    @IBOutlet weak var secondValueA: UITextField!
    @IBOutlet weak var secondValueC: UITextField!
    @IBOutlet weak var resultB: UITextField!
    @IBOutlet weak var thirdValueB: UITextField!
    @IBOutlet weak var thirdValueC: UITextField!
    @IBOutlet weak var resultA: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pythagoras(a: Double, b: Double) -> Double{
        return sqrt(pow(a,2) + pow(b,2))
    }
    
    func pythagorasTwo(c: Double, a: Double) -> Double{
        return sqrt(pow(c,2) - pow(a,2))
    }
    
    func pythagorasThree(b: Double, c: Double) -> Double{
        return sqrt(pow(c,2) - pow(b,2))
    }

    @IBAction func firstCalculate(_ sender: Any){
        resultC.text = String(pythagoras(a: (Double((firstValueA.text)!)!),
                                  b: (Double(firstValueB.text!)!)))
    }
    
    @IBAction func secondCalculate(_ sender: Any){
        resultB.text = String(pythagorasTwo(c: (Double((secondValueC.text)!)!), a: (Double(secondValueA.text!)!)))
    }
    
    @IBAction func thirdCalculate(_ sender: Any){
        resultA.text = String(pythagorasThree(b: (Double((thirdValueB.text)!)!), c: (Double((thirdValueC.text)!)!)))
    }
}
