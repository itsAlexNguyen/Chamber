//
//  BaseNetworkViewController.swift
//  ChamberExample
//
//  Created by Alex Nguyen on 2017-07-23.
//  Copyright © 2017 Gopher Labs LTD. All rights reserved.
//

import UIKit
import Chamber

class BaseNetworkViewController: UIViewController {
    var networkClient: ChamberClient!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        networkClient = ChamberClient(using: appDelegate.networkSettings)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
