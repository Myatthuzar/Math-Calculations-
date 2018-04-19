//
//  2DShapesAreaTwo.swift
//  Math Calculations!
//
//  Created by Myat Thuzar Kyaw on 1/16/18.
//  Copyright © 2018 Myat Thuzar Kyaw. All rights reserved.
//

import Foundation
import UIKit

class TwoDShapesAreaTwo: UIViewController{
    @IBOutlet weak var kiteP: UITextField!
    @IBOutlet weak var kiteQ: UITextField!
    @IBOutlet weak var kiteArea: UITextField!
    
    @IBOutlet weak var parallelogramB: UITextField!
    @IBOutlet weak var parallelogramH: UITextField!
    @IBOutlet weak var parallelogramArea: UITextField!
    
    @IBOutlet weak var rhombusP: UITextField!
    @IBOutlet weak var rhombusQ: UITextField!
    @IBOutlet weak var rhombusArea: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func kiteButton(_ sender: Any) {
        kiteArea.text = String(((Double((kiteP.text)!)!) * Double((kiteQ.text)!)!) / 2)
    }

    @IBAction func parallelogramButton(_ sender: Any) {
        parallelogramArea.text = String((Double((parallelogramB.text)!)!) * Double((parallelogramH.text)!)!)
    }

    @IBAction func rhombusButton(_ sender: Any) {
        rhombusArea.text = String(((Double((rhombusP.text)!)!) * Double((rhombusQ.text)!)!) / 2)
    }
    
}

