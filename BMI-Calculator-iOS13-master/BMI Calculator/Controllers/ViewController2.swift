//
//  ViewController2.swift
//  BMI Calculator
//
//  Created by MohammedAyman on 5/1/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    var bmiResult:String?
    var advice:String?
    var color:UIColor?
    
    @IBOutlet weak var bmiLable: UILabel!
    @IBOutlet weak var adviceLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLable.text = bmiResult
        adviceLable.text = advice
        view.backgroundColor = color
        // Do any additional setup after loading the view.
    }
    
    @IBAction func reCalculateButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
