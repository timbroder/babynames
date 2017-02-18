//
//  NamesDataService.swift
//  BabyNames
//
//  Created by Tim Broder on 2/18/17.
//  Copyright © 2017 Taco23. All rights reserved.
//

import Foundation
import RealmSwift

class NamesDataService {
    private var realm: Realm
    
    init(realm: Realm) {
        self.realm = realm
    }
    
    func count() -> Int {
        return self.realm.objects(Name.self).count
    }
    
    func all() -> Results<Name> {
        return self.realm.objects(Name.self)
    }
    
}
