//
//  BaseCell.swift
//  SwiftyTube
//
//  Created by Sultan Sultan on 1/29/17.
//  Copyright © 2017 Sultan Sultan. All rights reserved.
//

import UIKit

class BaseCell: UICollectionViewCell {
    override init(frame:CGRect){
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        
    }
    
}
