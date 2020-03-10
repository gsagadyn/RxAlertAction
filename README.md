# RxAlertAction

[![Version](https://img.shields.io/cocoapods/v/RxAlertAction.svg?style=flat)](https://cocoapods.org/pods/RxAlertAction)
[![License](https://img.shields.io/cocoapods/l/RxAlertAction.svg?style=flat)](https://cocoapods.org/pods/RxAlertAction)
[![Platform](https://img.shields.io/cocoapods/p/RxAlertAction.svg?style=flat)](https://cocoapods.org/pods/RxAlertAction)

The convenient way to combine UIAlertController and RxSwift

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- iOS 11.0+
- Xcode 11
- Swift 5.1

## Installation

RxAlertAction is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'RxAlertAction'
```

## Usage

```swift
enum AlertActionType: String {
    case One
    case Two
    case Three
}

let firstAction = RxAlertAction(title: "first", style: .default, identifier: AlertActionType.One)
let secondAction = RxAlertAction(title: "second", style: .cancel, identifier: AlertActionType.Two)
let thirdAction = RxAlertAction(title: "third", style: .destructive, identifier: AlertActionType.Three)
let alert = UIAlertController(title: "Hello world!", message: nil, preferredStyle: .alert)

alert.addAction(firstAction)
alert.addAction(secondAction)
alert.addAction(thirdAction)

present(alert, animated: true)

Observable.merge(firstAction.asObservable(), secondAction.asObservable(), thirdAction.asObservable())
    .take(1)
    .subscribe(onNext: { print("Selected: \($0)") })
    .disposed(by: bag)
```

## Author

Grzegorz Sagadyn, sagadyn@gmail.com

## License

RxAlertAction is available under the MIT license. See the LICENSE file for more info.
