//
//  CostlyViewController.swift
//  BillSplitter
//
//  Created by SKC on 12/2/18.
//  Copyright © 2018 SKC-PRO. All rights reserved.
//

import UIKit

class CostlyViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!

    var finalText = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "Your dinner was expensive"
        resultLabel.text = finalText
    }
}
