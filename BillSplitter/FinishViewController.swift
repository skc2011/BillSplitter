//
//  FinishViewController.swift
//  BillSplitter
//
//  Created by SKC on 12/4/18.
//  Copyright © 2018 SKC-PRO. All rights reserved.
//

import UIKit

class FinishViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func finishClicked(_ sender: Any) {
        if let navController = navigationController {
            navController.popToRootViewController(animated: true)
        }
    }
    
}
