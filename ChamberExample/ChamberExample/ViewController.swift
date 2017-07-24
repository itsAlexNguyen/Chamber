//
//  ViewController.swift
//  ChamberExample
//
//  Created by Alex Nguyen on 2017-07-23.
//  Copyright © 2017 Gopher Labs LTD. All rights reserved.
//

import UIKit
import Chamber
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let settings = ChamberClient.Settings(baseUrl: "https://randomuser.me") {
            let client = ChamberClient(using: settings)
            client.request("/api/", callback: HttpCallback<RandomUserResponse>(onSuccess: { (response) in
                
            }, onFailure: { (error) in
                // TODO
            })
        )}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

