//
//  RxAlertAction.swift
//  RxAlertAction
//
//  Created by Grzegorz Sagadyn on 10/03/2020.
//

import UIKit
import RxSwift
import RxCocoa

open class RxAlertAction<T>: UIAlertAction {
    // MARK: - Internal Properties
    
    internal let actionRelay = PublishRelay<T>()
    
    // MARK: - Initialization
    
    public convenience init(title: String?, style: UIAlertAction.Style, identifier: T) {
        self.init(title: title, style: style) { action in
            let rxAction = action as? RxAlertAction<T>
            rxAction?.actionRelay.accept(identifier)
        }
    }
}
