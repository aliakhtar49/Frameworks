//
//  ViewController.swift
//  PrivateFrameworkSpecRepoConsumer
//
//  Created by Ali Akhtar on 18/04/2019.
//  Copyright © 2019 Ali Akhtar. All rights reserved.
//

import UIKit
import ModuleNetwork
import ModuleExtension

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let moduleNetwork = Networking()
        print(moduleNetwork.get())
        
        let extensionModuel = Extensions()
        print(extensionModuel.get())
    }


}

