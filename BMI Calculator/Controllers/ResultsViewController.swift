//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Bilal Javed on 10/01/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    var calculatedBMI: String?

    @IBOutlet weak var BMIRemarkLabel: UILabel!
    @IBOutlet weak var BMIValueLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        BMIValueLabel.text = calculatedBMI
    }
    
    
    @IBAction func reCalculatePressed(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
