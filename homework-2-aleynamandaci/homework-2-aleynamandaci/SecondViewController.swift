//
//  SecondViewController.swift
//  homework-2-aleynamandaci
//
//  Created by Aleyna Mandacı on 31.05.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var heightField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    //bmi calculate func
    func calculateBmi() -> Double {
        let weight : Double = Double(weightField.text!)!
        let height : Double = Double(heightField.text!)!
        let bmi = weight / pow(height/100, 2)
        return bmi
    }
    
    
}
