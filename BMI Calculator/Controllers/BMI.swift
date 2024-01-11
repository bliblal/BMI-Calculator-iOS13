//
//  BMI.swift
//  BMI Calculator
//
//  Created by Bilal Javed on 11/01/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    var value : String
    var advice: String?
    var color: UIColor?
    
    mutating func getAdvice(){
        if Float(self.value) ?? 0.0 < 18.5 {
            self.advice = "Eat some burgers"
        }
        else if Float(self.value) ?? 0.0 >= 18.5 && Float(self.value) ?? 0.0 <= 24.9  {
            self.advice = "keep doing what youre doing"
        }
        
        else {
            self.advice = "lay off the snacks geez"
        }
    }
}
