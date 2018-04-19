//
//  ReferencesPage.swift
//  Math Calculations!
//
//  Created by Myat Thuzar Kyaw on 3/25/18.
//  Copyright © 2018 Myat Thuzar Kyaw. All rights reserved.
//

import Foundation
import UIKit

class References: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func logoWebsite(_ sender: Any) {
        if let websiteURL = URL(string: "https://www.tailorbrands.com") {
            UIApplication.shared.open(websiteURL, options: [:]) {_ in}}
    }
    
    @IBAction func schoolWebsite(_ sender: Any) {
        if let websiteURL = URL(string: "https://www.simacademy.edu.sg") {
            UIApplication.shared.open(websiteURL, options: [:]) {_ in}}
    }
}
