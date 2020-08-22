//
//  ViewController.swift
//  Tip_Calculator
//
//  Created by Eloisa Kaye on 8/20/20.
//  Copyright © 2020 CodePath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipValueLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var totalLabel_by2: UILabel!
    @IBOutlet weak var totalLabel_by3: UILabel!
    @IBOutlet weak var totalLabel_by4: UILabel!
    @IBOutlet weak var totalLabel_by5: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        //get bill amount
        let bill = Double(billAmountTextField.text!) ?? 0
        
        
        //calculate the tip and total
        let tipPercentages = [0.10, 0.15, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update tip and total labels
        tipValueLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
            //total divided by 2 people
            totalLabel_by2.text = String(format: "$%.2f", total/2)
            //total divided by 3 people
            totalLabel_by3.text = String(format: "$%.2f", total/3)
            //total divided by 4 people
            totalLabel_by4.text = String(format: "$%.2f", total/4)
            //total divided by 5 people
            totalLabel_by5.text = String(format: "$%.2f", total/5)
        
    }
    
}

