//
//  DataSource.swift
//  TacoPop
//
//  Created by Shengkun Wei on 11/18/16.
//  Copyright © 2016 Amy. All rights reserved.
//

import Foundation

protocol DataServiceDelegate: class {
    func dataLoaded()
}

class DataService {
    static let instance = DataService()
    
    weak var delegate: DataServiceDelegate?
    
    var data: [Taco] = []
    
    private init(){}
    
    func loadData() {
        
        let taco1 = Taco(id: 1, name: "Taco1", shell: .corn, protein: .chicken, color: .blue)
        data.append(taco1)
        
        let taco2 = Taco(id: 2, name: "Taco2", shell: .corn, protein: .chicken, color: .green)
        data.append(taco2)
        
        let taco3 = Taco(id: 3, name: "Taco3", shell: .corn, protein: .chicken, color: .yellow)
        data.append(taco3)
        
        let taco4 = Taco(id: 4, name: "Taco4", shell: .corn, protein: .chicken, color: .red)
        data.append(taco4)
        
        let taco5 = Taco(id: 5, name: "Taco5", shell: .corn, protein: .chicken, color: .blue)
        data.append(taco5)
        
        let taco6 = Taco(id: 6, name: "Taco6", shell: .corn, protein: .chicken, color: .cyan)
        data.append(taco6)
        
        let taco7 = Taco(id: 7, name: "Taco7", shell: .corn, protein: .chicken, color: .brown)
        data.append(taco7)
        
        delegate?.dataLoaded()
    }
}
