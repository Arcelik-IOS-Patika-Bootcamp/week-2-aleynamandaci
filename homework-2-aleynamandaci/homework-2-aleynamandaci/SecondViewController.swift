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
    
    //describing completion handler
    public var completionHandlerName: ((String?)-> Void)?
    public var completionHandlerBmi: ((String?)-> Void)?
    
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
    
    //passing data to first screen with completion handler when button pressed
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        completionHandlerName?(nameField.text)
        completionHandlerBmi?(String(format: "%.2f", calculateBmi()))
        
        dismiss(animated: true, completion: nil)
    }
    
}
