//
//  calculatorLogic.swift
//  BMI Calculator
//
//  Created by Bilal Javed on 10/01/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorLogic {
    var calculatedBMI: BMI?
    
    mutating func calculateBMI(_ height: Float, _ weight: Float){
        let bmiIs = String(format: "%.1f", weight / (pow(height, 2)))
        calculatedBMI = BMI(value: bmiIs)
        getAdvice()
    }
    
    func getBMIValue() -> String {
        return calculatedBMI?.value ?? "0.0"
    }
    
    mutating func getAdvice(){
        if Float(calculatedBMI!.value) ?? 0.0 < 18.5 {
            calculatedBMI?.advice = "Eat some burgers"
            calculatedBMI?.color = UIColor.systemBlue
        }
        else if Float(calculatedBMI!.value) ?? 0.0 >= 18.5 && Float(calculatedBMI!.value) ?? 0.0 <= 24.9  {
            calculatedBMI!.advice = "keep doing what youre doing"
            calculatedBMI!.color = UIColor.systemGreen
        }
        
        else {
            calculatedBMI!.advice = "lay off the snacks geez"
            calculatedBMI!.color = UIColor.systemRed
        }
    }
}
