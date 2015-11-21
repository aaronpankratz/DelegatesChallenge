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
    @IBOutlet weak var lockSwitch: UISwitch!
    
    let zipCodeTextFieldDelegate = ZipCodeTextFieldDelegate()
    let cashTextFieldDelegate = CashTextFieldDelegate()
    let lockableTextFieldDelegate = LockableTextFieldDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.zipCodeTextField.delegate = self.zipCodeTextFieldDelegate
        self.cashTextField.delegate = self.cashTextFieldDelegate
        self.lockableTextFieldDelegate.lockSwitch = self.lockSwitch
        self.lockableTextField.delegate = self.lockableTextFieldDelegate
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

