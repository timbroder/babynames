//
//  NameInitializer.swift
//  BabyNames
//
//  Created by Tim Broder on 2/18/17.
//  Copyright © 2017 Taco23. All rights reserved.
//

import Foundation
import RealmSwift

protocol NameInitializer: class {
    func needsInit(realm: Realm) -> Bool
    func initNames(realm: Realm)
}

struct StubName {
    let name: String
    let gender: Gender
}

extension NameInitializer {
    func needsInit(realm: Realm) -> Bool {
        let namesDataService = NamesDataService(realm: realm)
        return namesDataService.count() == 0
    }
    
    func initNames(realm: Realm) {
        let names = [
            StubName(name: "Charlie", gender: .male),
            StubName(name: "Sadie", gender: .female),
            StubName(name: "Bits", gender: .male),
            StubName(name: "Maya", gender: .female),
            StubName(name: "David", gender: .male),
            StubName(name: "Luke", gender: .male),
            StubName(name: "Tim", gender: .male),
            StubName(name: "Laura", gender: .female),
            StubName(name: "Jonathan", gender: .male),
            StubName(name: "Jenna", gender: .female),
        ]
        
        try! realm.write {
            realm.deleteAll()
            
            let category = Category()
            category.name = "main"
            
            let language = Language()
            language.name = "English"
            
            for name in names {
                let newName = Name()
                newName.name = name.name
                newName.gender = name.gender
                newName.category = category
                newName.language = language
                realm.add(newName)
            }
        }
        
    }
}
