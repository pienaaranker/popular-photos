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
    let consKey = "ql5e4SsQUjIB9E05wPjfSzTFjLTI0POIh69NDMPR"
    let baseURL = "https://api.500px.com/v1"
    
    
    func getLatestPopularPhotos(completion: (([ModelPhoto]) -> Void)){
        let url = "\(baseURL)/photos?consumer_key=\(consKey)"
        
        Alamofire.request(url).responseJSON() { response in
            if let error = response.error {
                print(error.localizedDescription)
                return
            }
            let page = ModelPage(fromJson: response.data?.json())
            print("total items: \(page.totalItems)")
        }
    }
}

extension Data {
    func json() -> JSON?{
        return JSON(data: self)
    }
}

extension NSData {
    func json() -> JSON?{
        return JSON(data: self as Data)
    }
}
