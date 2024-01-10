//
//  calculatorLogic.swift
//  BMI Calculator
//
//  Created by Bilal Javed on 10/01/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation


struct CalculatorLogic {
    var calculatedBMI: String?
    
    mutating func calculateBMI(_ height: Float, _ weight: Float){
        calculatedBMI = String(format: "%.1f", weight / (pow(height, 2)))
    }
}
