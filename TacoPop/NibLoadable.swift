//
//  NibLoadable.swift
//  TacoPop
//
//  Created by Shengkun Wei on 11/18/16.
//  Copyright © 2016 Amy. All rights reserved.
//

import UIKit

protocol NibLoadable: class {
    
}

extension NibLoadable where Self: UIView {
    static var name: String {
        return String(describing: self)
    }
}
