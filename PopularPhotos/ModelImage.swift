//
//	ModelImage.swift
//
//	Create by Pienaar Anker on 10/7/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation
import SwiftyJSON

class ModelImage{

	var format : String!
	var httpsUrl : String!
	var size : Int!
	var url : String!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json == JSON.null{
			return
		}
		format = json["format"].stringValue
		httpsUrl = json["https_url"].stringValue
		size = json["size"].intValue
		url = json["url"].stringValue
	}

}
