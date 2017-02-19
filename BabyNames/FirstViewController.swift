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
    var swiperDelegate: SwiperDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        swiperDelegate = SwiperDelegate()
        
        let namesRealm = BabyRealm().globalSharedRealm()
        let namesDataService = NamesDataService(realm: namesRealm)
        namesCollection = namesDataService.all()
        
        kolodaView.dataSource = self
        kolodaView.delegate = swiperDelegate
        
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

extension FirstViewController: KolodaViewDataSource {
    func kolodaNumberOfCards(_ koloda:KolodaView) -> Int {
        return namesCollection.count
    }
    
    func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
        let name = namesCollection[index]
        let nameVM = NameCardViewModel(name: name)
        let view = nameVM.view
        return view!
    }
    
//    func koloda(koloda: KolodaView, viewForCardOverlayAt index: Int) -> OverlayView? {
//        return NSBundle.mainBundle().loadNibNamed("OverlayView",
//                                                  owner: self, options: nil)[0] as? OverlayView
//    }
}

