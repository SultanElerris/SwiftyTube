//
//  MenuBar.swift
//  SwiftyTube
//
//  Created by Sultan Sultan on 1/28/17.
//  Copyright © 2017 Sultan Sultan. All rights reserved.
//

import UIKit

class MenuBar: UIView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = UIColor(red: 230/255, green: 32/255, blue: 31/255, alpha: 1)
        
        cv.dataSource = self
        cv.delegate = self
        return cv
    }()
    
    let cellId = "MenuCell"
    let imageNames = ["Home", "Profile", "Others", "Settings" ]
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        
        collectionView.register(MenuCell.self, forCellWithReuseIdentifier: cellId)
        backgroundColor = UIColor(red: 230/255, green: 32/255, blue: 31/255, alpha: 1)
        addSubview(collectionView)
        addConstrantsWithFormat(format: "H:|[v0]|", views: collectionView)
        addConstrantsWithFormat(format: "V:|[v0]|", views: collectionView)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as? MenuCell else {
            return collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        }
        
        cell.imageView.image = UIImage(named: (imageNames[indexPath.item]))
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:frame.width / 4, height:frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
