//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Nikita on 26.09.23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        switch bmiValue {
        case ..<18.5 :
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", backgroundColor: .systemBlue)
         case 18.5 ... 24.9:
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", backgroundColor: .green)
        case 25...:
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", backgroundColor: .systemOrange)
        default:
            break
        }

    }
    
    func getBMIValue() -> BMI? {
        bmi
    }
    
    
}
