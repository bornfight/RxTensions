import RxSwift
import Alamofire

extension Observable {
    /// Subscribe to an observable containing a `Result<T>`
    func subscribe<R>(
        onSuccess: ((R) -> Void)?,
        onError: ((Error) -> Void)?)
    -> Disposable where Element == Result<R>
    {
        let disposable = Disposables.create()
        
        let observer = AnyObserver<Element> { event in
            switch event {
            case let .next(value):
                switch value {
                case let .success(successValue):
                    onSuccess?(successValue)
                case let .failure(error):
                    onError?(error)
                }
            case let .error(error):
                if let onError = onError {
                    onError(error)
                } else {
                    Hooks.defaultErrorHandler([], error)
                }
                disposable.dispose()
            default:
                break
            }
        }
        
        return Disposables.create(
            self.asObservable().subscribe(observer),
            disposable
        )
    }
}
