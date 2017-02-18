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
    func namesRealm() -> Realm {
        let realm = try! Realm()
        return realm
    }
}
