//
//  FirstViewController.swift
//  BabyNames
//
//  Created by Tim Broder on 2/18/17.
//  Copyright © 2017 Taco23. All rights reserved.
//

import UIKit
import Koloda
import RealmSwift
import Cartography

class FirstViewController: UIViewController {

    var kolodaView = KolodaView()
    var namesCollection: Results<Name>!
    var cardDelegate: CardsDelegate!
    var cardDataSource: CardsDataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        cardDelegate = CardsDelegate()
        
        let namesRealm = BabyRealm().globalSharedRealm()
        let namesDataService = NamesDataService(realm: namesRealm)
        namesCollection = namesDataService.all()
        cardDataSource = CardsDataSource(names: namesCollection)
        
        kolodaView.dataSource = cardDataSource
        kolodaView.delegate = cardDelegate
        
        self.view.addSubview(kolodaView)
        
        constrain(self.view, kolodaView) { parent, swipe in
            swipe.width == parent.width / 2
            swipe.height == parent.width / 2
            swipe.center == parent.center
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

