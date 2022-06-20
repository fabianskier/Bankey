//
//  CurrencyFormatterTests.swift
//  BankeyUnitTests
//
//  Created by Oscar Cristaldo on 2022-06-12.
//

import Foundation
import XCTest

@testable import Bankey

class Test: XCTestCase {
    var formatter: CurrencyFormatter!
    
    override func setUp() {
        super.setUp()
        formatter = CurrencyFormatter()
    }
    
    func testBreakIntoDollarsAndCents() throws {
        let result = formatter.breakIntoDollarsAndCents(929466.23)
        XCTAssertEqual(result.0, "929,466")
        XCTAssertEqual(result.1, "23")
    }
    
    func testDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(123456.78)
        XCTAssertEqual(result, "$123,456.78")
    }
    
    func testZeroDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(0.00)
        XCTAssertEqual(result, "$0.00")
    }
    
    func testDollarsFormattedWithCurrencySymbol() throws {
        let locale = Locale.current
        let currentSymbol = locale.currencySymbol!
        
        let result = formatter.dollarsFormatted(123456.78)
        XCTAssertEqual(result, "\(currentSymbol)123,456.78")
    }
}
