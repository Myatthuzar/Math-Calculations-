//
//  FactorialCalculator.swift
//  Math Calculations!
//
//  Created by Myat Thuzar Kyaw on 1/7/18.
//  Copyright © 2018 Myat Thuzar Kyaw. All rights reserved.
//

import Foundation
import UIKit
class FactorialCalculator
: UIViewController{

    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var output: UITextView!
    
    func factorial(factorialNumber: Double) -> Double{
        if factorialNumber == 0{
            return 1
        } else {
            return factorialNumber * factorial(factorialNumber: factorialNumber - 1)}
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func inputButton(_ sender: Any) {
        output.text = "The factorial of \(String(describing: input.text)) is \(String(factorial(factorialNumber: Double(input.text!)!)))"
    }
}
