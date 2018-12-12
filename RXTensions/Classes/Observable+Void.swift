//
//  Observable+Void.swift
//  Alamofire
//
//  Created by Filip Fajdetic on 12/12/2018.
//

import RxSwift

public extension ObservableType {
    func void() -> Observable<Void> {
        return map { _ in () }
    }
}
