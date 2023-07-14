//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLable: UILabel!
    @IBOutlet weak var weightLable: UILabel!
    @IBOutlet weak var heightSliderValue: UISlider!
    @IBOutlet weak var weightSlidderValue: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func heightSlider(_ sender: UISlider) {
        let height = String(format: "%.2f",sender.value)
        heightLable.text = "\(height)m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let weight = String(format: "%.0f",sender.value)
        weightLable.text = "\(weight)Kg"
    }
    @IBAction func calcButton(_ sender: UIButton) {
        let height = heightSliderValue.value
        let weight = weightSlidderValue.value
        calculatorBrain.bmiCalculation(height: height, weight: weight)
    
        self.performSegue(withIdentifier: "goToView2", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToView2"{
          let destinationvC =  segue.destination as! ViewController2
            destinationvC.bmiResult = calculatorBrain.getBmiValue()
            destinationvC.advice = calculatorBrain.getAdvice()
            destinationvC.color = calculatorBrain.getColor()
            
        }
    }
}

