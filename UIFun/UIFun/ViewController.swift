//
//  ViewController.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bucket: UIView!
    @IBOutlet weak var control1: UISegmentedControl!
    @IBOutlet weak var control2: UISegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        bucket.paintColorName = "red"
        
    }

    func mixColors(withFirst first: String, second: String) -> String {
        let mix = (first, second)
        switch mix {
        case ("red", "red"):
            return "red"
        case ("red", "yellow"), ("yellow", "red"):
            return "orange"
        case ("red", "blue"), ("blue", "red"):
            return "purple"
        case ("yellow", "yellow"):
            return "yellow"
        case ("yellow", "blue"), ("blue", "yellow"):
            return "green"
        case ("blue", "blue"):
            return "blue"
        default:
            return "no color"
    }
}
    
        @IBAction func colorSelected(sender: UISegmentedControl) {
            bucket.paintColorName = mixColors(withFirst: control1.color.name, second: control2.color.name)
        }
        
        
}

