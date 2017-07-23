//
//  User.swift
//  ChamberExample
//
//  Created by Alex Nguyen on 2017-07-23.
//  Copyright © 2017 Gopher Labs LTD. All rights reserved.
//

import Foundation
import Chamber
import SwiftyJSON

class RandomUserResponse: JSONDecodeable {
    let results : [User]
    
    required init?(json: JSON) {
        results = json["results"].arrayValue.flatMap( { return User(json: $0) })
        super.init(json: json)
    }
}
