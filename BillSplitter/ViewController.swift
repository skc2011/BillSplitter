//
//  ViewController.swift
//  BillSplitter
//
//  Created by SKC on 11/30/18.
//  Copyright © 2018 SKC-PRO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var dinersTextField: UITextField!
    
    @IBOutlet weak var totalCostTextField: UITextField!
    
    var resultText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func dissmissKeyboard(_ sender: Any) {
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let identifier = segue.identifier {
            if identifier == "cheap" {
                let navContloller = segue.destination as! UINavigationController
                let destinationVC = navContloller.topViewController as! ResultViewController
                destinationVC.finalText = resultText
            } else {
                let destinationVC = segue.destination as! CostlyViewController
                destinationVC.finalText = resultText
            }
        }
    }
    
    @IBAction func dismissVC(segue: UIStoryboardSegue) {
    }
    
    @IBAction func helpClicked(_ sender: Any) {

        if let helpVC = storyboard?.instantiateViewController(withIdentifier: "nav") {
            present(helpVC, animated: true, completion: nil)
        }
    }
    
    @IBAction func calculate(_ sender: Any) {
        
        if let dinerValue = dinersTextField.text, let totalValue = totalCostTextField.text, let diner = Double(dinerValue), let total = Double(totalValue) {
            let formattedTotal = String(format: "%.2f", total)
            let formattedCost = String(format: "%.2f", total/diner)
            resultText = "The total cost is $\(formattedTotal)\n\nNumber of diners:\(Int(diner))\n\nEach diner pays $\(formattedCost)"
            if total < 100 {
                performSegue(withIdentifier: "cheap", sender: self)
            } else {
                performSegue(withIdentifier: "costly", sender: self)
            }
        }
    }
}

