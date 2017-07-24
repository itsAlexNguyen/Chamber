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

class User: JSONDecodeable {
    let cell: String
    
    required init?(json: JSON) {
        cell = json["cell"].stringValue
        super.init(json: json)
    }
}
