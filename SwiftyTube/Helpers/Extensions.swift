//
//  Extensions.swift
//  SwiftyTube
//
//  Created by Sultan Sultan on 1/28/17.
//  Copyright © 2017 Sultan Sultan. All rights reserved.
//

import UIKit

extension UIView {
    
    func addConstrantsWithFormat(format: String, views: UIView...) {
        
        
        var viewDictionary = [String: UIView]()
        
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            viewDictionary[key] = view
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewDictionary))
    }
}
