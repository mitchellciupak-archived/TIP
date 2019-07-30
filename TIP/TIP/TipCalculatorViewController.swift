//
//  TipCalculatorViewController.swift
//  TIP
//
//  Created by Mitchell Ciupak on 7/28/19.
//  Copyright © 2019 Mitchell Ciupak. All rights reserved.
//

import Foundation
import UIKit

class TipCalculatorViewController: UIViewController
{
    @IBOutlet weak var totalResulLable:
        UILabel!
    @IBOutlet weak var amountBeforeTaxField:
        UITextField!
    @IBOutlet weak var tipPercentageLabel:
        UILabel!
    @IBOutlet weak var tipPercetageSlider:
        UISlider!
    @IBOutlet weak var numPeopleSplitSlider:
        UISlider!
    @IBOutlet weak var numPeopleSplitLabel:
        UILabel!
    @IBOutlet weak var eachPersonAmount:
        UILabel!
    
    var tipCalculator = TipCalculator(amountBeforeTax: 0, tipPercentage: 10)
    
    override func viewDidLoad() {
       super.viewDidLoad()
        amountBeforeTaxField.becomeFirstResponder()
        
    }
    
    func calulateBill() {
        tipCalculator.tipPercentage = Double(tipPercetageSlider.value) / 100
        tipCalculator.amountBeforeTax = (amountBeforeTaxField.text! as NSString).doubleValue
        tipCalculator.calculateTip()
        updateUI()
    }
    
    func updateUI() {
        totalResulLable.text = String(format: "$%0.2f%", tipCalculator.totalAmount)
        let numPeople: Int = Int(numPeopleSplitSlider.value)
        eachPersonAmount.text = String(format: "$%0.2f", tipCalculator.totalAmount / Double(numPeople))
    }
    
    
    //MARK: - Target/Action
    
    @IBAction func tipSliderActionChanged(sender: Any) {
        tipPercentageLabel.text = String(format: "Tip: %02d%%", Int(tipPercetageSlider.value))
        calulateBill()
        
    }
    
    @IBAction func numPeopleSplitSliderChanged(sender: Any) {
        numPeopleSplitLabel.text = "Slit: \(Int(numPeopleSplitSlider.value))"
        calulateBill()
    }
    
    @IBAction func AmountBeforeTaxFieldChanged(_ sender: Any) {
        calulateBill()

    }
    
}
