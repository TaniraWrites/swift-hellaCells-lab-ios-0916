//
//  HellaDetailViewController.swift
//  HellaCells
//
//  Created by Tanira Wiggins on 10/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaDetailViewController: UIViewController {

    @IBOutlet weak var displayNumber: UILabel!
    
    var passedNumber: Int?
 
    override func viewWillAppear(_ animated: Bool) {
        if let num = passedNumber{
           displayNumber?.text = String(num)
        }
    }
}
