//
//  LatestPopularPhotosCollectionViewController.swift
//  PopularPhotos
//
//  Created by Pienaar Anker on 2017/07/10.
//  Copyright © 2017 Byte Orbit. All rights reserved.
//

import UIKit
import Nuke

class LatestPopularPhotosCollectionViewController: UICollectionViewController {

    var rest = RESTController()
    var photos = [ModelPhoto]()
    var page = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        loadImages()
    }
    
    func loadImages(){
        rest.getLatestPopularPhotos(page: self.page, completion: { photos in
            self.photos.append(contentsOf: photos)
            self.collectionView?.reloadData()
        })
    }
    
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell", for: indexPath) as! PhotoCollectionViewCell
        let photo = photos[indexPath.row]
        cell.setImage(with: photo.imageUrl)
        cell.frame.size.width = self.view.frame.width/2
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        // if last cell increment page and load next
        if indexPath.row == photos.count - 1 &&
            !rest.busy{
            page += 1
            loadImages()
        }
    }

}
