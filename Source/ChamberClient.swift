//
//  ChamberClient.swift
//  Chamber
//
//  Created by Alex Nguyen on 2017-07-23.
//  Copyright © 2017 Gopher Labs LTD. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

public class ChamberClient {
    private let settings: Settings
    
    public init(using settings: Settings) {
        self.settings = settings
    }
    
    public func request<T>(
        _ path: String,
        method: HTTPMethod = .get,
        parameters: Parameters? = nil,
        encoding: ParameterEncoding = URLEncoding.default,
        headers: HTTPHeaders? = nil,
        callback: HttpCallback<T>) {
        if (settings.enableStubbing) {
            // TODO : Return stubbed object
        } else {
            Alamofire.request(settings.baseUrl + path, method: method, parameters: parameters, encoding: encoding, headers: headers).responseJSON(completionHandler: { response in
                switch response.result {
                case .success(let json):
                    print(json)
                    callback.onSuccess(JSON(json))
                case .failure(let error):
                    // TODO - Handle Failure
                    print("ERROR!" + error.localizedDescription)
                }
            })
        }
    }
    
    public class Settings {
        public let baseUrl: String
        public let logRequests: Bool
        public let enableStubbing: Bool
        
        /**
         This creates a settings model to use with ChamberClient. Must provide a valid base URL or will return nil.
         - parameter baseUrl: The base Url
         - parameter logRequests: A flag that notifies the client to log requests in the console. Default to True.
         - parameter enableStubbing: A flag to use local stubs or make direct network requests. Default to False.
         */
        public init?(baseUrl : String,
                     logRequests: Bool = true,
                     enableStubbing: Bool = false) {
            // Check the base URL is valid URL
            let regEx = "((https|http)://)((\\w|-)+)(([.]|[/])((\\w|-)+))+"
            let predicate = NSPredicate(format:"SELF MATCHES %@", argumentArray:[regEx])
            guard predicate.evaluate(with: baseUrl) else { return nil }
            
            self.baseUrl = baseUrl
            self.logRequests = logRequests;
            self.enableStubbing = enableStubbing
        }
    }
}
