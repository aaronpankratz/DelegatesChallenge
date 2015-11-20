//
//  ZipCodeTextFieldDelegate.swift
//  DelegatesChallenge
//
//  Created by Aaron Pankratz on 11/19/15.
//  Copyright © 2015 Aaron Pankratz. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        let newString = (textField.text! as NSString).stringByReplacingCharactersInRange(range, withString: string)
        return newString.characters.count <= 5 && self.containsOnlyDigits(newString)
    }
    
    func containsOnlyDigits(string: String) -> Bool {
        let digits = NSCharacterSet.decimalDigitCharacterSet()
        for uni in string.unicodeScalars {
            if (!digits.longCharacterIsMember(uni.value)) {
                return false
            }
        }
        return true
    }
}