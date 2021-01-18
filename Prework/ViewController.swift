//
//  ViewController.swift
//  Prework
//
//  Created by luis palafox on 1/15/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BillAmountText: UITextField!
    @IBOutlet weak var TipAmountLabel: UILabel!
    @IBOutlet weak var TipControl: UISegmentedControl!
    @IBOutlet weak var TotalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        BillAmountText.becomeFirstResponder()
    }

    @IBAction func CalculatedTip(_ sender: Any) {
        let Bill = Double(BillAmountText.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = Bill * tipPercentages[TipControl.selectedSegmentIndex]
        let total = Bill + tip
        TipAmountLabel.text = String(format: "$%.2f" , tip)
        TotalLabel.text = String(format: "$%.2f" , total)
        
        
        
    }
    
}

