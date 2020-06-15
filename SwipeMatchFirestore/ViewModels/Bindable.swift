//
//  Bindable.swift
//  SwipeMatchFirestore
//
//  Created by Ahmed Yasir on 1/6/20.
//  Copyright © 2020 Ahmed Yasir. All rights reserved.
//


import Foundation

class Bindable<T> {
    var value: T? {
        didSet {
            observer?(value)
        }
    }
    
    var observer: ((T?) -> ())?
    
    func bind(observer: @escaping (T?) -> ()) {
        self.observer = observer
    }
}
