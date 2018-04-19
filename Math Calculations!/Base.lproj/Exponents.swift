//
//  Exponents.swift
//  Math Calculations!
//
//  Created by Myat Thuzar Kyaw on 1/14/18.
//  Copyright © 2018 Myat Thuzar Kyaw. All rights reserved.
//

import Foundation
import UIKit

class Exponents: UIViewController{
    
    @IBOutlet weak var base: UITextField!
    @IBOutlet weak var exponent: UITextField!
    @IBOutlet weak var result: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func findingExponent(a: Double, b: Double) -> Double{
        return pow(a,b)
    }
    @IBAction func calculateButton(_ sender: Any){
        result.text = "\(String(describing: base.text)) to the power \(String(describing: exponent.text)) equals to \(String(findingExponent(a: Double((base.text)!)!, b: Double((exponent.text)!)!)))"
    
    }
}
