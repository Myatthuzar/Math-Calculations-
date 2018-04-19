//
//  3DShapesVolume.swift
//  Math Calculations!
//
//  Created by Myat Thuzar Kyaw on 1/16/18.
//  Copyright © 2018 Myat Thuzar Kyaw. All rights reserved.
//

import Foundation
import UIKit

class ThreeDShapesVolume: UIViewController{
    @IBOutlet weak var tBase: UITextField!
    @IBOutlet weak var tHeighy: UITextField!
    @IBOutlet weak var tLength: UILabel!
    @IBOutlet weak var tArea: UITextField!
    @IBOutlet weak var cLength: UITextField!
    @IBOutlet weak var cWidth: UITextField!
    @IBOutlet weak var cHeight: UITextField!
    @IBOutlet weak var cVolume: UITextField!
    @IBOutlet weak var pLength: UITextField!
    @IBOutlet weak var pWidth: UITextField!
    @IBOutlet weak var pHeight: UITextField!
    @IBOutlet weak var pVolume: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func tVolume(_ sender: Any) {
        tArea.text = String((Double((tBase.text)!)!) * Double((tHeighy.text)!)! * 0.5 * Double((tLength.text)!)!)
    }
    @IBAction func cButton(_ sender: Any) {
        cVolume.text = String((Double((cLength.text)!)!) * Double((cWidth.text)!)! * Double((cHeight.text)!)!)
    }
    
    @IBAction func pButton(_ sender: Any) {
        pVolume.text = String((Double((pLength.text)!)!) * Double((pWidth.text)!)! * Double((pHeight.text)!)! * 1/3)
    }
    
    
}
