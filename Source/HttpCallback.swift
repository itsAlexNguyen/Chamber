//
//  HttpCallback.swift
//  Alamofire
//
//  Created by Alex Nguyen on 2017-07-23.
//

import Foundation

public class HttpCallback<T> {
    public typealias SuccessBlock = (T) -> Void
    public typealias FailureBlock = (Error) -> Void
    
    private let successBlock: SuccessBlock
    private let failureBlock: FailureBlock
    
    required public init(onSucces successBlock: @escaping SuccessBlock, onFailure failureBlock: @escaping FailureBlock) {
        self.successBlock = successBlock
        self.failureBlock = failureBlock
    }
    
    public func onSuccess(_ response: String) {
//        if let object = instantiateObject(json: response) {
//            DispatchQueue.main.async {
//                self.successBlock(object)
//            }
//        } else {
//            // TODO : Display JSON parsing error
//        }
    }
    public func onFailure(_ error: Error) {
        DispatchQueue.main.async {
            self.failureBlock(error)
        }
    }
    
//    private func instantiateObject(json jsonStr: String) -> T? {
//
//        return T(json: jsonStr)
//    }
}
