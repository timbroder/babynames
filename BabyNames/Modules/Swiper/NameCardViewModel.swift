//
//  NameCardViewModel.swift
//  BabyNames
//
//  Created by Tim Broder on 2/19/17.
//  Copyright © 2017 Taco23. All rights reserved.
//

import Foundation

class NameCardViewModel: NSObject {
    fileprivate let name: Name
    var view: NameCardView?
    
    init(name: Name) {
        self.name = name
        
        super.init()
        
        initView()
    }
    
    func initView() {
        view = NameCardView(name: name.name)
    }
}
