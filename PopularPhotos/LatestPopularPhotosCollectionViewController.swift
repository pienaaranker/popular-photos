//
//  LatestPopularPhotosCollectionViewController.swift
//  PopularPhotos
//
//  Created by Pienaar Anker on 2017/07/10.
//  Copyright © 2017 Byte Orbit. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class LatestPopularPhotosCollectionViewController: UICollectionViewController {

    var rest = RESTController()
    override func viewDidLoad() {
        super.viewDidLoad()
//        
//        // Register cell classes
//        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        rest.getLatestPopularPhotos(completion: { photos in
            
        })
    }
    
    
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
    
        return cell
    }

}
