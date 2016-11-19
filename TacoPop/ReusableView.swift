//
//  ReusableView.swift
//  TacoPop
//
//  Created by Shengkun Wei on 11/18/16.
//  Copyright © 2016 Amy. All rights reserved.
//

import UIKit


protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    static var identifier: String {
        return String(describing: self)
    }
}
