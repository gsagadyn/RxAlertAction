//
//  RxAlertAction+Rx.swift
//  RxAlertAction
//
//  Created by Grzegorz Sagadyn on 10/03/2020.
//

import RxSwift
import RxCocoa

extension RxAlertAction: ObservableType {
    public typealias Element = T
    
    public func subscribe<Observer: ObserverType>(_ observer: Observer) -> Disposable where Observer.Element == T {
        return actionRelay.take(1).subscribe(observer)
    }
}
