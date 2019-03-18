<p align="center">
  <img src="https://github.com/RenGate/MetricPrefixNumberFormatter/raw/master/logo.png" />
  <img src="https://img.shields.io/badge/Swift-4.2-orange.svg?style=flat">
  <img src="https://img.shields.io/cocoapods/v/MetricPrefixNumberFormatter.svg?style=flat">
  <img src="https://img.shields.io/cocoapods/p/MetricPrefixNumberFormatter.svg?style=flat">
  <img src="https://img.shields.io/cocoapods/l/MetricPrefixNumberFormatter.svg?style=flat">
</p>

MetricPrefixNumberFormatter is an `NSNumberFormatter` subclass designed to format large and small numbers using the [metric prefixes](https://en.wikipedia.org/wiki/Metric_prefix).
This is a must have library, if your app displays potentially big numbers like a number of views, likes, etc, or deals with calculations that may potentially involve very small numbers.

```
1200 -> 1.2 K
12300000 -> 12.3 M
0.0017 -> 1.7 m
```

Main features
* Supports all metric prefixes: from yotta (10^24) to yocto (10^-24).
* Localizable using the `localizationDictionary` property.
* Configurable units and delimiters.

# Examples

```swift
// 1122300 -> 1.12 M
let nf = MetricPrefixNumberFormatter()
nf.minimumFractionDigits = 2
nf.stringWithMetricPrefix(from: 1122300)
```
```swift
// 0.001 -> 1 mA
let nf = MetricPrefixNumberFormatter()
nf.unit = "A"
nf.stringWithMetricPrefix(from: 0.001)
```
```swift
// 1200 -> 1.2KV
let nf = MetricPrefixNumberFormatter()
nf.unit = "V"
nf.delimiter = ""
nf.stringWithMetricPrefix(from: 1200)
```

Since `MetricPrefixNumberFormatter` is a subclass of `NSNumberFormatter` its output can be configured the same way as with `NSNumberFormatter`. A good overview of `NSNumberFormatter` output setup using the `minimum/maximumSignificantDigits`, `minimum/maximumFractionDigits`, and `usesSignificantDigits` properties is presented in [this guide by @samwize](https://samwize.com/2015/11/04/a-guide-to-nsnumberformatter/).

You can also check out provided example iOS app that shows you how various numbers are formatted by `MetricPrefixNumberFormatter`.
```
$ pod try MetricPrefixNumberFormatter
```

## Requirements

* iOS 8+
* Xcode 10 / Swift 4.2 and higher

## Installation using CocoaPods

```ruby
pod 'MetricPrefixNumberFormatter', '~> 1.0.0'
```

## License

MetricPrefixNumberFormatter is available under the MIT license. See LICENSE file for more information.
