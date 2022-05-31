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
            //self.bmiLabel.text! += "\nYour bmi : " + text!
            
            let bmiDouble = Double(text!)
            
            
            //if-else statement to make sure the desired values ​​are entered
            
            if bmiDouble!.isInfinite{
                self.bmiLabel.text! += ""
                self.rangeLabel.text = "We can't calculate your bmi 🥺 \nPlease give us your weight and height!"
            }else if bmiDouble == 0 {
                self.bmiLabel.text! += ""
                self.rangeLabel.text = "We can't calculate your bmi 🥺 \nPlease give us your weight and height!"
            } else {
                //switch case statement for bmi range
                switch bmiDouble!{
                case ..<18.5 :
                    self.bmiLabel.text! += "\nYour bmi : " + text!
                    self.rangeLabel.text = "You're underweight 🥺"
                case ..<24.9 :
                    self.bmiLabel.text! += "\nYour bmi : " + text!
                    self.rangeLabel.text = "You're healthy ☺️"
                case ..<29.9 :
                    self.bmiLabel.text! += "\nYour bmi : " + text!
                    self.rangeLabel.text = "You're overweight 🥺"
                case 30... :
                    self.bmiLabel.text! += "\nYour bmi : " + text!
                    self.rangeLabel.text = "You're obese 🥺"
                default:
                    self.bmiLabel.text! += ""
                    self.rangeLabel.text = "We can't calculate your bmi 🥺 \nPlease give us your weight and height!"
                }
            }
            
            
        }
        
        present(viewController, animated: true)
    }
    
}

