//
//  NameView.swift
//  BabyNames
//
//  Created by Tim Broder on 2/18/17.
//  Copyright © 2017 Taco23. All rights reserved.
//

import UIKit
import Koloda

class NameView: UIView {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initialize()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.initialize()
    }
    
    init(name: String, backgroundColor: UIColor? = nil) {
        super.init(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        self.initialize(backgroundColor: backgroundColor)
    }
    
    func initialize(backgroundColor: UIColor? = nil) {
        self.layer.cornerRadius = 10;
        self.layer.masksToBounds = true;
        
        if let backgroundColor = backgroundColor {
            self.backgroundColor = backgroundColor
        } else {
            self.backgroundColor = UIColor().generateRandomPastelColor()
        }
    }
}
