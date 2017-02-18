//
//  Language.swift
//  BabyNames
//
//  Created by Tim Broder on 2/18/17.
//  Copyright © 2017 Taco23. All rights reserved.
//

import Foundation
import RealmSwift


class Language: Object {
    dynamic var name = ""
    
    let names = LinkingObjects(fromType: Name.self, property: "language")
}
