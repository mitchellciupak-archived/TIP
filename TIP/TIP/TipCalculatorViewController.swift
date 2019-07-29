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
    
    var tipCalculator = TipCalculator(amountBeforeTax: 0, tipPercentage: 0)
    
    override func viewDidLoad() {
       super.viewDidLoad()
        amountBeforeTaxField.becomeFirstResponder()
        
    }
    
    func calulateTip() {
        
    }
    
    func updateUI() {
        
    }
    
    
    //MARK: - Target/Action
    
    @IBAction func tipSliderActionChanged(sender: Any) {
        
    }
    
    @IBAction func numPeopleSplitSliderChanged(sender: Any) {
        
    }
    
    @IBAction func amountBeforeTaxFieldChanged(sender: Any) {
        
    }
}
