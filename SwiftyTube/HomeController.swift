//
//  ViewController.swift
//  SwiftyTube
//
//  Created by Sultan Sultan on 1/8/17.
//  Copyright © 2017 Sultan Sultan. All rights reserved.
//

import UIKit

class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Home"
        collectionView?.backgroundColor = UIColor.white
        collectionView?.register(videoCell.self, forCellWithReuseIdentifier: "SwiftyTubeCell")
        navigationController?.navigationBar.isTranslucent = false
        collectionView?.contentInset = UIEdgeInsetsMake(50, 0, 0, 0)
        collectionView?.scrollIndicatorInsets = UIEdgeInsetsMake(50, 0, 0, 0)
        // Setup the custom menu bar
        setupMenuBar()
        
    }
    
    
    let menuBar: MenuBar = {
        let mb = MenuBar()
        return mb
    }()
    
    func setupMenuBar() {
        
        view.addSubview(menuBar)
        navigationController?.hidesBarsOnSwipe = true
        
        view.addConstrantsWithFormat(format: "H:|[v0]|", views: menuBar)
        view.addConstrantsWithFormat(format: "V:|[v0(50)]", views: menuBar)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // Delegate Methods
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SwiftyTubeCell", for: indexPath)

        return cell
    }
    
    
    
    //Layout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        let height = (view.frame.width - 16 - 16) * 9 / 16
        return CGSize(width: view.frame.width, height: height + 16 + 68)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
