//
//  TacoCell.swift
//  TacoPop
//
//  Created by Shengkun Wei on 11/18/16.
//  Copyright © 2016 Amy. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, NibLoadable, ReusableView, Shakeable {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var text: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        image.showShadow()
        
    }
    
    
    func configureView(taco: Taco) {
        image.backgroundColor = taco.color
        text.text = taco.name
    }

}


