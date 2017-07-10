//
//  PhotoCollectionViewCell.swift
//  PopularPhotos
//
//  Created by Pienaar Anker on 2017/07/10.
//  Copyright © 2017 Byte Orbit. All rights reserved.
//

import UIKit
import Nuke

class PhotoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    func setImage(with url:String){
        imageView.image = nil
        guard let url = URL(string:url)  else { return }
        Nuke.loadImage(with: url, into: imageView)
    }
}
