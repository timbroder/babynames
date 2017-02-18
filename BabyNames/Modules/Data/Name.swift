//
//  Name.swift
//  BabyNames
//
//  Created by Tim Broder on 2/18/17.
//  Copyright © 2017 Taco23. All rights reserved.
//

import Foundation
import RealmSwift

enum Gender {
    case male
    case female
}

class Name: Object {
    dynamic var name = ""
    var gender: Gender = .male
    
    dynamic var language: Language?
    dynamic var category: Category?
}
