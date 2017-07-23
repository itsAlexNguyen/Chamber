//
//  String+ValidUrl.swift
//  Alamofire
//
//  Created by Alex Nguyen on 2017-07-23.
//

import Foundation

public extension String {
    var isValidUrl: Bool {
        let urlRegEx = "((?:http|https)://)?(?:www\\.)?[\\w\\d\\-_]+\\.\\w{2,3}(\\.\\w{2})?(/(?<=/)(?:[\\w\\d\\-./_]+)?)?"
        return NSPredicate(format: "SELF MATCHES %@", urlRegEx).evaluate(with: self)
    }
}
