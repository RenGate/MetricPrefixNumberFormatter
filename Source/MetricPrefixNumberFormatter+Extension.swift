//
//  MetricPrefixNumberFormatter+Extension.swift
//  MetricPrefixNumberFormatter
//
//  Created by Rostyslav Dovhaliuk on 15.03.2019.
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

import Foundation

public extension MetricPrefixNumberFormatter {
    func stringWithMetricPrefix(from number: Double) -> String? {
        return stringWithMetricPrefix(from: NSNumber(value: number))
    }
    
    func stringWithMetricPrefix(from number: Float) -> String? {
        return stringWithMetricPrefix(from: NSNumber(value: number))
    }
    
    func stringWithMetricPrefix(from number: Int) -> String? {
        return stringWithMetricPrefix(from: NSNumber(value: number))
    }
    
    func stringWithMetricPrefix(from number: Int64) -> String? {
        return stringWithMetricPrefix(from: NSNumber(value: number))
    }
    
    func stringWithMetricPrefix(from number: Int32) -> String? {
        return stringWithMetricPrefix(from: NSNumber(value: number))
    }
    
    func stringWithMetricPrefix(from number: Int16) -> String? {
        return stringWithMetricPrefix(from: NSNumber(value: number))
    }
    
    func stringWithMetricPrefix(from number: Int8) -> String? {
        return stringWithMetricPrefix(from: NSNumber(value: number))
    }
    
    func stringWithMetricPrefix(from number: UInt) -> String? {
        return stringWithMetricPrefix(from: NSNumber(value: number))
    }
    
    func stringWithMetricPrefix(from number: UInt64) -> String? {
        return stringWithMetricPrefix(from: NSNumber(value: number))
    }
    
    func stringWithMetricPrefix(from number: UInt32) -> String? {
        return stringWithMetricPrefix(from: NSNumber(value: number))
    }
    
    func stringWithMetricPrefix(from number: UInt16) -> String? {
        return stringWithMetricPrefix(from: NSNumber(value: number))
    }
    
    func stringWithMetricPrefix(from number: UInt8) -> String? {
        return stringWithMetricPrefix(from: NSNumber(value: number))
    }
}
