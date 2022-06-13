//
//  Decimal+Utils.swift
//  Bankey
//
//  Created by Oscar Cristaldo on 2022-06-11.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
