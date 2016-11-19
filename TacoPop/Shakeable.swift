//
//  Shakeable.swift
//  TacoPop
//
//  Created by Shengkun Wei on 11/19/16.
//  Copyright © 2016 Amy. All rights reserved.
//

import UIKit

protocol Shakeable {
    
}

extension Shakeable where Self: UIView {
    func shakeItOff() {
        let anim = CABasicAnimation(keyPath: "position")
        anim.duration = 0.05
        anim.autoreverses = true
        anim.repeatCount = 10
        anim.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4, y: self.center.y))
        anim.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4, y: self.center.y))
        
        layer.add(anim, forKey: "position")
    }
}

