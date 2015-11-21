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
        // TODO handle delete
        var existingText = textField.text!
            .stringByReplacingOccurrencesOfString("$", withString: "")
            .stringByReplacingOccurrencesOfString(".", withString: "")
            .stringByReplacingOccurrencesOfString(",", withString: "")
        if (existingText.characters.count <= 4) {
            //TODO figure out math way for string with length < 4
            existingText = existingText.characters.count == 0 ? "0" : existingText
//            var intValue = Int(existingText)!
//            var doubleValue = Double(intValue * 10) + Double(intValue % ) + Double(string)!
            
            let number = self.numberFormatter.numberFromString(existingText)
            textField.text = self.numberFormatter.stringFromNumber(number!)
        }
        else {
            let secondToLastCharacterIndex = existingText.startIndex.advancedBy(existingText.characters.count - 1)
            textField.text = "$" + existingText.substringToIndex(secondToLastCharacterIndex) + "." + existingText.substringFromIndex(secondToLastCharacterIndex) + string
        }
        return false
    }
}
