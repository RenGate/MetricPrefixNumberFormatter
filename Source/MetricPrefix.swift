//
//  MetricPrefix.swift
//  MetricPrefixNumberFormatter
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

import Foundation

public enum MetricPrefix: Int, CaseIterable {
    case yotta = 24
    case zetta = 21
    case exa = 18
    case peta = 15
    case tera = 12
    case giga = 9
    case mega = 6
    case kilo = 3
    case zero = 0
    case milli = -3
    case micro = -6
    case nano = -9
    case pico = -12
    case femto = -15
    case atto = -18
    case zepto = -21
    case yocto = -24
    
    static var latinPrefixes: [MetricPrefix: String] {
        return [
            .yotta: "Y",
            .zetta: "Z",
            .exa: "E",
            .peta: "P",
            .tera: "T",
            .giga: "G",
            .mega: "M",
            .kilo: "k",
            .zero: "",
            .milli: "m",
            .micro: "μ",
            .nano: "n",
            .pico: "p",
            .femto: "f",
            .atto: "a",
            .zepto: "z",
            .yocto: "y"
        ]
    }
}

extension MetricPrefix: Comparable { }

public func <(lhs:MetricPrefix, rhs:MetricPrefix) -> Bool {
    return lhs.rawValue < rhs.rawValue
}
