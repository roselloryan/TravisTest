//
//  TravisTestTests.swift
//  TravisTestTests
//
//  Created by RYAN ROSELLO on 1/8/19.
//  Copyright © 2019 RYAN ROSELLO. All rights reserved.
//

import XCTest
import TravisTest

class TravisTestTests: XCTestCase {
    
    //MARK: Dictionary
    
    func testDictionarySafeString() {
        let goodKey = "good_key"
        let badKey = "bad_key"
        let goodValue = "good_value"
        
        let dict = [ goodKey : goodValue ] as Dictionary<String, Any>
        
        let retrievedGoodValue = dict.safeString(key: goodKey)
        XCTAssertEqual(retrievedGoodValue, goodValue, "Did not retrieve expected value for valid key!")
        
        let retrievedBadValue = dict.safeString(key: badKey)
        XCTAssertEqual(retrievedBadValue, "", "Did not retrieve default value for invalid key!")
    }
    
    func testDictionarySafeInt() {
        let goodKey = "good_key"
        let goodNegativeKey = "good_negative_key"
        let badKey = "bad_key"
        let goodValue = 3
        let goodNegativeValue = -2340
        
        let dict = [ goodKey: goodValue,
                     goodNegativeKey: goodNegativeValue ] as Dictionary<String, Any>
        
        let retrievedGoodValue = dict.safeInt(key: goodKey)
        XCTAssertEqual(retrievedGoodValue, goodValue, "Did not retrieve expected value for valid key!")
        
        let retrievedNegativeValue = dict.safeInt(key: goodNegativeKey)
        XCTAssertEqual(retrievedNegativeValue, goodNegativeValue, "Did not retrieve expected negative value for valid key!")
        
        let retrievedBadValue = dict.safeInt(key: badKey)
        XCTAssertEqual(retrievedBadValue, 0, "Did not retrieve default value for invalid key!")
        
    }
    
    func testDictionarySafeBool() {
        let goodKey = "good_key"
        let goodFalseKey = "good_negative_key"
        let badKey = "bad_key"
        let goodValue = true
        let goodFalseValue = false
        
        let dict = [ goodKey: goodValue,
                     goodFalseKey: goodFalseValue] as Dictionary<String, Any>
//                     goodNullKey: goodNullValue]
        
        let retrievedGoodValue = dict.safeBoolean(key: goodKey)
        XCTAssertEqual(retrievedGoodValue, goodValue, "Did not retrieve expected value for valid key!")
        
        let retrievedGoodFalseValue = dict.safeBoolean(key: goodFalseKey)
        XCTAssertEqual(retrievedGoodFalseValue, goodFalseValue, "Did not retrieve expected value for false valid key!")
        
//        let retrievedGoodNullValue = dict.safeBoolean(goodNullKey)
//        XCTAssertEqual(retrievedGoodNullValue, false, "Did not retrieve expected value for null valid key!")
        
        let retrievedBadValue = dict.safeBoolean(key: badKey)
        XCTAssertEqual(retrievedBadValue, false, "Did not retrieve default value for invalid key!")
    }

//    override func setUp() {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDown() {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
//
//    func testExample() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
