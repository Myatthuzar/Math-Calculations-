//
//  2DShapesPerimeter.swift
//  Math Calculations!
//
//  Created by Myat Thuzar Kyaw on 1/16/18.
//  Copyright © 2018 Myat Thuzar Kyaw. All rights reserved.
//

import Foundation
import UIKit

class TwoDShapesPerimeter: UIViewController{
    @IBOutlet weak var tbuttonOne: UITextField!
    @IBOutlet weak var tButtonTwo: UITextField!
    @IBOutlet weak var tButtonThree: UITextField!
    @IBOutlet weak var tResult: UITextField!
    // The text fields above are text fields that the user needs to ender in for the perimeter of the triangle.
    @IBOutlet weak var qFieldOne: UITextField!
    @IBOutlet weak var qFieldTwo: UITextField!
    @IBOutlet weak var qFieldThree: UITextField!
    @IBOutlet weak var qFieldFour: UITextField!
    @IBOutlet weak var qResult: UITextField!
    // The text fields above are for the perimeter of a quadrilateral.
    @IBOutlet weak var polygonOne: UITextField!
    @IBOutlet weak var polygonTwo: UITextField!
    @IBOutlet weak var polygonResult: UITextField!
    // The text fields above are for the perimeters of regular polygons.

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func tButton(_ sender: Any) {
        tResult.text = String((Double((tbuttonOne.text)!)!) + Double((tButtonTwo.text)!)! + Double((tButtonThree.text)!)!)
    }
    @IBAction func qButton(_ sender: Any) {
        qResult.text = String((Double((qFieldOne.text)!)!) + Double((qFieldTwo.text)!)! + Double((qFieldThree.text)!)! + Double((qFieldFour.text)!)!)
    }
    @IBAction func polygonButton(_ sender: Any) {
        polygonResult.text = String((Double((polygonOne.text)!)!) * Double((polygonTwo.text)!)!)
}
}
