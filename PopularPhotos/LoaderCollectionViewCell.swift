//
//  LoaderCollectionViewCell.swift
//  PopularPhotos
//
//  Created by Pienaar Anker on 2017/07/10.
//  Copyright © 2017 Byte Orbit. All rights reserved.
//

import UIKit

class LoaderCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var loader: UIActivityIndicatorView!
    
    func startAnimating(){
        loader.startAnimating()
    }
    
    func stopAnimating(){
        loader.stopAnimating()
    }
}
