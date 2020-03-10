//
//  ViewController.swift
//  RxAlertAction
//
//  Created by Grzegorz Sagadyn on 03/10/2020.
//  Copyright (c) 2020 Grzegorz Sagadyn. All rights reserved.
//

import UIKit
import RxSwift
import RxAlertAction

internal class ViewController: UIViewController {
    // MARK: - Private Properties
    
    private var bag = DisposeBag()
    
    // MARK: - Actions
    
    @IBAction internal func buttonAction() {
        bag = DisposeBag()
        
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
    }
}

