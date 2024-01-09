//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    } 
   
    @IBAction func sliderMoved(_ sender: UISlider) {
        //code to round off slider values
        var step: Double
        step = sender == weightSlider ?  1.0 :  0.01
        var roundedValue = round(Double(sender.value) / step) * step
        roundedValue = Double(String(format: "%.2f", roundedValue))!
        
        if sender == weightSlider{
            weightLabel.text = String("\(roundedValue) Kg")
        }
        else{
            heightLabel.text = String("\(roundedValue) m")
        }
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let weight = weightSlider.value
        let height = heightSlider.value
        let BMI = weight / (height * height)
        print(BMI)
        let hash = weightSlider.hashValue
        print(hash)
    }
}

