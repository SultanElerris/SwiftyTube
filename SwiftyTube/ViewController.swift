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
        
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "SwiftyTubeCell")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // Delegate Methods
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SwiftyTubeCell", for: indexPath)
        
        cell.backgroundColor = UIColor.red
        
        return cell
    }
    
    
    
    //Layout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 200)
    }


}

