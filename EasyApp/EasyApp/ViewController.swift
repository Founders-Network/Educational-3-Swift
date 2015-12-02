//
//  ViewController.swift
//  EasyApp
//
//  Created by Joanna Chen on 2015-11-26.
//  Copyright © 2015 Joanna Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //inputTextField.becomeFirstResponder()
        
    }
    
    @IBAction func calculateTip(sender: AnyObject) {
        let inputString = inputTextField.text
 
        let sliderValue = Double(Int(slider.value))
        
        let tipPercentage = sliderValue / 100.0
        
        inputTextField.returnKeyType = UIReturnKeyType.Done
        
        tipPercentageLabel.text = "Tip Percentage: " + String(Int(sliderValue)) + "%"
        
        if ((inputString?.isEmpty) == nil) {
            let billAmount = Double(inputString!)! / 100.0
            
            let tipAmount = billAmount * tipPercentage
            tipLabel.text = String(tipAmount)
            totalLabel.text = String(billAmount + tipAmount)
            
        } else { // clear all Labels
            tipLabel.text = "Tip: $0"
            totalLabel.text = "Total: $0"
        }

    }
    
    // Text Field Delegate
    
    func textFieldShouldReturn(inputTextField: UITextField) -> Bool {
        inputTextField.resignFirstResponder()
        return true
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

