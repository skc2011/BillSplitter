//
//  ResultViewController.swift
//  BillSplitter
//
//  Created by SKC on 11/30/18.
//  Copyright © 2018 SKC-PRO. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    var finalText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = finalText
    }
    /*
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }*/
}
