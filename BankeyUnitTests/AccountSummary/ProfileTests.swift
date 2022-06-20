//
//  ProfileTests.swift
//  BankeyUnitTests
//
//  Created by Oscar Cristaldo on 2022-06-19.
//

import Foundation
import XCTest

@testable import Bankey

class ProfileTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    func testCanParse() throws {
        let json = """
        {
        "id": "1",
        "first_name": "Oscar",
        "last_name": "Cristaldo",
        }
        """
        
        let data = json.data(using: .utf8)!
        let result = try! JSONDecoder().decode(Profile.self, from: data)
        
        XCTAssertEqual(result.id, "1")
        XCTAssertEqual(result.firstName, "Oscar")
        XCTAssertEqual(result.lastName, "Cristaldo")
    }
}
