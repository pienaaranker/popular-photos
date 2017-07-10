//
//  APIController.swift
//  PopularPhotos
//
//  Created by Pienaar Anker on 2017/07/10.
//  Copyright © 2017 Byte Orbit. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class RESTController {
    var busy = false
    
    let consKey = "ql5e4SsQUjIB9E05wPjfSzTFjLTI0POIh69NDMPR"
    let baseURL = "https://api.500px.com/v1"
    
    func getLatestPopularPhotos(page: Int, completion: @escaping (([ModelPhoto]) -> Void)){
        let url = "\(baseURL)/photos?consumer_key=\(consKey)&feature=popular&sort=created_at&image_size=3&page=\(page)"
        self.busy = true
        
        Alamofire.request(url).responseJSON() { response in
            self.busy = false
            if let error = response.error {
                print("Error in getLatestPopularPhotos: \(error.localizedDescription)")
                return
            }
            guard let data = response.data
                else {
                    print("Error in getLatestPopularPhotos: Invalid data")
                    return
            }
            let json = JSON(data: data)
            
            if response.response?.statusCode == 200 {
                let page = ModelPage(fromJson: json)
                completion(page.photos)                
            }else{
                print("Error in getLatestPopularPhotos: \(json)")
            }
        }
    }
}
