//
//  HttpCallback.swift
//  Alamofire
//
//  Created by Alex Nguyen on 2017-07-23.
//

import Foundation
import Chamber
import SwiftyJSON

public class HttpCallback<T: JSONDecodeable> {
    public typealias SuccessBlock = (T) -> Void
    public typealias FailureBlock = (Error) -> Void
    
    private let successBlock: SuccessBlock
    private let failureBlock: FailureBlock
    
    required public init(onSuccess successBlock: @escaping SuccessBlock, onFailure failureBlock: @escaping FailureBlock) {
        self.successBlock = successBlock
        self.failureBlock = failureBlock
    }
    
    public func onSuccess(_ response: JSON) {
        if let object = instantiateObject(json: response) {
            DispatchQueue.main.async {
                self.successBlock(object)
            }
        } else {
            
        }
    }
    public func onFailure(_ error: Error) {
        DispatchQueue.main.async {
            self.failureBlock(error)
        }
    }
    
    private func instantiateObject(json: JSON) -> T? {
        return T(json: json)
    }
}
