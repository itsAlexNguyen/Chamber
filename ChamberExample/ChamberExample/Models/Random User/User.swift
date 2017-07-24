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
    let dobOfBirth: String
    let email: String
    
    required init?(json: JSON) {
        // Make sure all values are there
        guard let cell = json["cell"].string,
        let dob = json["dob"].string,
        let email = json["email"].string
            else { return nil }
        
        self.cell = cell
        self.dobOfBirth = dob
        self.email = email
        super.init(json: json)
    }
}
