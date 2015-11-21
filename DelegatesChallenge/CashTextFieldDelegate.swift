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
    
    override init() {
        super.init()
    }

    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        let newString = (textField.text! as NSString).stringByReplacingCharactersInRange(range, withString: string)
        
        let digitString = newString
            .stringByReplacingOccurrencesOfString("$", withString: "")
            .stringByReplacingOccurrencesOfString(".", withString: "")
        
        if let pennies = Int(digitString) {
            let remainder = pennies % 100
            let centString = (remainder < 10) ? "0\(remainder)" : "\(remainder)"
            textField.text = "$\(pennies / 100).\(centString)"
        }
        else {
            textField.text = "$0.00"
        }
        return false
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        if textField.text!.isEmpty {
            textField.text = "$0.00"
        }
    }
}
