//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Nikita on 26.09.23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var value: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet var adviceLabel: UILabel!
    @IBOutlet var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = value
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculateAction(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
