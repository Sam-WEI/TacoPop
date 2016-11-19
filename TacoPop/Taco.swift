//
//  Taco.swift
//  TacoPop
//
//  Created by Shengkun Wei on 11/18/16.
//  Copyright © 2016 Amy. All rights reserved.
//

import Foundation
import UIKit

enum TacoShell: Int {
    case flour = 1
    case corn = 2
}

enum TacoProtein: String {
    case beef = "beef"
    case chicken = "chicken"
    case fish = "fish"
}


struct Taco {
    private var _id: Int!
    private var _name: String!
    private var _shell: TacoShell!
    private var _protein: TacoProtein!
    private var _color: UIColor!
    
    var id: Int {
        return _id
    }
    
    var name: String {
        return _name
    }
    
    
    var shell: TacoShell {
        return _shell
    }
    
    var protein: TacoProtein {
        return _protein
    }
    
    var color: UIColor {
        return _color
    }
    
    init(id: Int, name: String, shell: TacoShell, protein: TacoProtein, color: UIColor) {
        self._id = id
        self._name = name
        self._shell = shell
        self._protein = protein
        self._color = color
    }
    
}
