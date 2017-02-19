//
//  BabyRealm.swift
//  BabyNames
//
//  Created by Tim Broder on 2/18/17.
//  Copyright © 2017 Taco23. All rights reserved.
//

import Foundation
import RealmSwift

class BabyRealm {
    func globalSharedRealm() -> Realm {
        let realm = try! Realm()
        return realm
    }
    
    func privateSharedRealm() -> Realm {
        let realm = try! Realm()
        return realm
    }
    
    func localRealm() -> Realm {
        let realm = try! Realm()
        return realm
    }
}
