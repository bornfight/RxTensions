//
//  Observable+filterNil.swift
//  RXTensions
//
//  Created by Dino on 27/09/2018.
//

import RxSwift

extension ObservableType {
    func filterNotNil<T>() -> Observable<T> where Self.E == Optional<T> {
        return flatMapLatest { thing -> Observable<T> in
            return thing.map(Observable.just) ?? .empty()
        }
    }
}
