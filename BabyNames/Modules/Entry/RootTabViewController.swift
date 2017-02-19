//
//  RootTabViewController.swift
//  BabyNames
//
//  Created by Tim Broder on 2/18/17.
//  Copyright © 2017 Taco23. All rights reserved.
//

import UIKit

class RootTabViewController: UITabBarController, NameInitializer {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let namesRealm = BabyRealm().globalSharedRealm()
        if self.needsInit(realm: namesRealm) {
            self.initNames(realm: namesRealm)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
}
