//
//  VideoCell.swift
//  SwiftyTube
//
//  Created by Sultan Sultan on 1/28/17.
//  Copyright © 2017 Sultan Sultan. All rights reserved.
//

import UIKit

class videoCell:UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Thumbnail Image View (Lazy Property)
    let thumbnailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "linux")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 5
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    // Separator (Lazy Property)
    let separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        return view
    }()
    
    let userProfileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "linux")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Linux Tux"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "I am a penguin and I like it"
        label.textColor = UIColor.lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    
    // View Setup
    func setupViews() {
        
        
        //Thumbnail
        addSubview(thumbnailImageView)
        // Separator
        addSubview(separatorView)
        
        // User Profile
        addSubview(userProfileImageView)
        
        addSubview(titleLabel)
        
        addSubview(subtitleLabel)
        
        addConstrantsWithFormat(format: "H:|-16-[v0]-16-|", views: thumbnailImageView)
        
        
        addConstrantsWithFormat(format: "H:|-16-[v0(44)]", views: userProfileImageView)
        
        
        addConstrantsWithFormat(format: "V:|-16-[v0]-4-[v1(44)]-16-[v2(1)]|", views: thumbnailImageView,userProfileImageView ,separatorView)
        
        
        addConstrantsWithFormat(format: "H:|[v0]|", views: separatorView)
        
        //left constrant
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .left, relatedBy: .equal, toItem: userProfileImageView, attribute: .right, multiplier: 1, constant: 8))
        
        
        //top constrant
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: thumbnailImageView, attribute: .bottom, multiplier: 1, constant: 8))
        
        //right constrant
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .right, relatedBy: .equal, toItem: thumbnailImageView, attribute: .right, multiplier: 1, constant: 0))
        
        // Height
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 20))
        
        //Subtitle -----------
        
        //left constrant
        addConstraint(NSLayoutConstraint(item: subtitleLabel, attribute: .left, relatedBy: .equal, toItem: userProfileImageView, attribute: .right, multiplier: 1, constant: 8))
        
        
        //top constrant
        addConstraint(NSLayoutConstraint(item: subtitleLabel, attribute: .top, relatedBy: .equal, toItem: titleLabel, attribute: .bottom, multiplier: 1, constant: 4))
        
        //right constrant
        addConstraint(NSLayoutConstraint(item: subtitleLabel, attribute: .right, relatedBy: .equal, toItem: thumbnailImageView, attribute: .right, multiplier: 1, constant: 0))
        
        // Height
        addConstraint(NSLayoutConstraint(item: subtitleLabel, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 30))
    }
}


