//
//  CashTextFieldDelegate.swift
//  DelegatesChallenge
//
//  Created by Aaron Pankratz on 11/20/15.
//  Copyright © 2015 Aaron Pankratz. All rights reserved.
//

import Foundation
import UIKit

class CashTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    let numberFormatter = NSNumberFormatter()
    
    override init() {
        super.init()
        self.numberFormatter.numberStyle = .CurrencyStyle
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        // TODO calculate penny value
        // TODO calculate whole dollar value
        // TODO create formatted string
        return true
    }
}
