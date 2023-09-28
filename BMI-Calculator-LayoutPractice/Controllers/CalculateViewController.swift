//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var calculateBrain = CalculatorBrain()
    
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        let siderValue = sender.value
        heightLabel.text = String(format: "%.2f", siderValue) + "m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let siderValue = sender.value
        weightlabel.text = String(format: "%.2f", siderValue) + "Kg"
    }
    
    @IBAction func calculateButtonAction(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculateBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            
            guard let bmi = calculateBrain.getBMIValue() else {
                print("bmi value is nil")
                return
            }
            
            destinationVC.value = String(format: "%.1f", bmi.value)
            destinationVC.advice = bmi.advice
            destinationVC.color = bmi.backgroundColor
        }
    }
}

