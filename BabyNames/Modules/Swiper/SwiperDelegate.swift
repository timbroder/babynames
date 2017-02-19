//
//  SwiperDelegate.swift
//  BabyNames
//
//  Created by Tim Broder on 2/19/17.
//  Copyright © 2017 Taco23. All rights reserved.
//

import Foundation
import Koloda

class SwiperDelegate: KolodaViewDelegate {
    func kolodaDidRunOutOfCards(koloda: KolodaView) {
        //        dataSource.reset()
        // event
    }
    
    func koloda(koloda: KolodaView, didSelectCardAt index: Int) {
        //        UIApplication.sharedApplication().openURL(NSURL(string: "https://yalantis.com/")!)
    }
}
