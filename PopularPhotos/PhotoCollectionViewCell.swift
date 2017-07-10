//
//  PhotoCollectionViewCell.swift
//  PopularPhotos
//
//  Created by Pienaar Anker on 2017/07/10.
//  Copyright © 2017 Byte Orbit. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    func set(image: UIImage){
        imageView.image = image
    }
}
