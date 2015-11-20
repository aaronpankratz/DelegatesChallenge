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
        return newString.characters.count <= 5 && newString.containsOnlyDigits()
    }
}