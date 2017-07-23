//
//  User.swift
//  ChamberExample
//
//  Created by Alex Nguyen on 2017-07-23.
//  Copyright © 2017 Gopher Labs LTD. All rights reserved.
//

import Foundation
import Chamber

class MyUser: JSONDecodeable {
    required init?(json: String) {
        super.init(json: json)
    }
}
