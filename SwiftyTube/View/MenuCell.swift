//
//  MenuCell.swift
//  SwiftyTube
//
//  Created by Sultan Sultan on 1/29/17.
//  Copyright © 2017 Sultan Sultan. All rights reserved.
//
// Icons for menu bar https://www.iconfinder.com/search/?q=home&price=free

import UIKit


class MenuCell: BaseCell {

    override func setupViews() {
        super.setupViews()
        
         addSubview(imageView)
        addConstrantsWithFormat(format: "H:[v0(28)]", views: imageView)
        addConstrantsWithFormat(format: "V:[v0(20)]", views: imageView)
        addConstraint(NSLayoutConstraint(item: imageView, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: imageView, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0))
    }
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.tintColor = UIColor.darkGray
        return iv
    }()
    
   
}
