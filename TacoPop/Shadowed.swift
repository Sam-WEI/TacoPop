//
//  Shadowed.swift
//  TacoPop
//
//  Created by Shengkun Wei on 11/19/16.
//  Copyright © 2016 Amy. All rights reserved.
//

import UIKit

protocol Shadowed: class {}

extension Shadowed where Self: UIView {
    func showShadow() {
        layer.shadowRadius = 3
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowOffset = CGSize.zero
        layer.shadowOpacity = 0.7
    }
    
}
