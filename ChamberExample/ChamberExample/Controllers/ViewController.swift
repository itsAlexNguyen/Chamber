//
//  ViewController.swift
//  ChamberExample
//
//  Created by Alex Nguyen on 2017-07-23.
//  Copyright © 2017 Gopher Labs LTD. All rights reserved.
//

import UIKit
import Chamber
class ViewController: BaseNetworkViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        networkClient.request(RestEndpoints.singleUser,
                              callback: HttpCallback<RandomUserResponse>(onSuccess: { (response) in
            // New response is object type RandomUserResponse
            for user in response.results {
                print("\(user.cell)  \(user.dobOfBirth)  \(user.email)")
            }
        }, onFailure: { (error) in
            // TODO - Handle error
        }))
    }
}

