//
//  CardDataSource.swift
//  BabyNames
//
//  Created by Tim Broder on 2/19/17.
//  Copyright © 2017 Taco23. All rights reserved.
//

import Foundation
import Koloda
import RealmSwift

class CardsDataSource: KolodaViewDataSource {
    var namesCollection: Results<Name>
    
    init(names: Results<Name>) {
        namesCollection = names
    }
    
    func kolodaNumberOfCards(_ koloda:KolodaView) -> Int {
        return namesCollection.count
    }
    
    func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
        let name = namesCollection[index]
        return NameCardViewModel(name: name).view!
    }
    
    //    func koloda(koloda: KolodaView, viewForCardOverlayAt index: Int) -> OverlayView? {
    //        return NSBundle.mainBundle().loadNibNamed("OverlayView",
    //                                                  owner: self, options: nil)[0] as? OverlayView
    //    }
}
