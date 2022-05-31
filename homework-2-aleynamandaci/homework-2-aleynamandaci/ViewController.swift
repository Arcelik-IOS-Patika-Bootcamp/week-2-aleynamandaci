//
//  ViewController.swift
//  homework-2-aleynamandaci
//
//  Created by Aleyna Mandacı on 31.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var rangeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        let viewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        viewController.modalPresentationStyle = .formSheet
        
        //editing label with getting data from second view
        viewController.completionHandlerName = {text in
            self.bmiLabel.text = "Hey " + text! + "!"
        }
        
        //editing label with getting data from second view
        viewController.completionHandlerBmi = {text in
            self.bmiLabel.text! += "\nYour bmi : " + text!
            
            let bmiDouble = Double(text!)
            
            //switch case statement for bmi range
            switch bmiDouble!{
            case ..<18.5 :
                self.rangeLabel.text = "You're underweight 🥺"
            case ..<24.9 :
                self.rangeLabel.text = "You're healthy ☺️"
            case ..<29.9 :
                self.rangeLabel.text = "You're overweight 🥺"
            default:
                self.rangeLabel.text = "You're obese 🥺"
            }
            
            
        }
        
        
        present(viewController, animated: true)
    }
    
}

