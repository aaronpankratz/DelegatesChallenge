//
//  String+Utils.swift
//  DelegatesChallenge
//
//  Created by Aaron Pankratz on 11/20/15.
//  Copyright © 2015 Aaron Pankratz. All rights reserved.
//

import Foundation

extension String {
    
    func containsOnlyDigits() -> Bool {
        let digits = NSCharacterSet.decimalDigitCharacterSet()
        for uni in self.unicodeScalars {
            if (!digits.longCharacterIsMember(uni.value)) {
                return false
            }
        }
        return true
    }
}