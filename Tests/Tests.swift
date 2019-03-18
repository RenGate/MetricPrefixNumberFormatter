//
//  Tests.swift
//  Tests
//
//  Created by Rostyslav Dovhaliuk on 16.03.2019.
//  Copyright © 2019 Rostyslav Dovhaliuk. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import XCTest
@testable import MetricPrefixNumberFormatter

class Tests: XCTestCase {
    var formatter: MetricPrefixNumberFormatter!
    
    override func setUp() {
        formatter = MetricPrefixNumberFormatter()
        formatter.usesSignificantDigits = true
    }
    
    func testFormatter() {
        XCTAssertEqual(formatter.stringWithMetricPrefix(from: 14000000) , "14 M")
        XCTAssertEqual(formatter.stringWithMetricPrefix(from: 0.000000000036) , "36 p")
        XCTAssertEqual(formatter.stringWithMetricPrefix(from: 0.73) , "0.73")
        XCTAssertEqual(formatter.stringWithMetricPrefix(from: 170000000) , "170 M")
        XCTAssertEqual(formatter.stringWithMetricPrefix(from: 1e-17) , "10 a")
        XCTAssertEqual(formatter.stringWithMetricPrefix(from: 0.0009) , "0.9 m")
        XCTAssertEqual(formatter.stringWithMetricPrefix(from: 2.4e-05) , "24 μ")
        XCTAssertEqual(formatter.stringWithMetricPrefix(from: 88000000000000) , "88 T")
        XCTAssertEqual(formatter.stringWithMetricPrefix(from: 760000) , "760 k")
    }
    
    func testDelimiter() {
        formatter.delimiter = ""
        
        XCTAssertEqual(formatter.stringWithMetricPrefix(from: 710000) , "710k")
        XCTAssertEqual(formatter.stringWithMetricPrefix(from: 0.00086) , "0.86m")
    }
    
    func testUnit() {
        formatter.unit = "V"
        
        XCTAssertEqual(formatter.stringWithMetricPrefix(from: 2) , "2 V")
        XCTAssertEqual(formatter.stringWithMetricPrefix(from: 0.00002) , "20 μV")
    }
    
    func testLocalization() {
        var dictionary = formatter.localizationDictionary
        dictionary[.kilo] = "к"
        dictionary[.nano] = "н"
        formatter.localizationDictionary = dictionary
        
        XCTAssertEqual(formatter.stringWithMetricPrefix(from: 5400) , "5.4 к")
        XCTAssertEqual(formatter.stringWithMetricPrefix(from: 1e-9) , "1 н")
    }
}
