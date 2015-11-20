//
//  ViewController.swift
//  DelegatesChallenge
//
//  Created by Aaron Pankratz on 11/19/15.
//  Copyright © 2015 Aaron Pankratz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var cashTextField: UITextField!
    @IBOutlet weak var lockableTextField: UITextField!
    
    let zipCodeTextFieldDelegate = ZipCodeTextFieldDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.zipCodeTextField.delegate = self.zipCodeTextFieldDelegate
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

