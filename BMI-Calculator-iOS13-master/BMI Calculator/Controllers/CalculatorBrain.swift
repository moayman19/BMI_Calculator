//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by MohammedAyman on 5/2/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//
import UIKit
struct CalculatorBrain {
    
    var bmi:BMI?
    
    mutating func bmiCalculation(height:Float,weight:Float){
       let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5{
           bmi = BMI(Value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1))
        }else if bmiValue < 24.9{
            bmi = BMI(Value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1))
        }else{
           bmi = BMI(Value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1))
        }
        }
    func getBmiValue() -> String {
        let  bmiTo1DecimalPlace = String(format: "%.1f", bmi?.Value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
        
    }
    func getColor() -> UIColor {
        return  bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
    }
}
