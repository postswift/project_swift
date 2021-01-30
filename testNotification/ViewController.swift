//
//  ViewController.swift
//  testNotification
//
//  Created by resopt on 1/30/21.
//  Copyright © 2021 resopt. All rights reserved.
//

import UIKit
import XCoordinator

class ViewController: UIViewController {
    @IBOutlet weak var gotoLoginScreen: UIButton!
    var route: UnownedRouter<UserListRoute>!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
    }
    

    @IBAction func navigateLogin(_ sender: Any) {
        route.trigger(.login)
    }
    
}

