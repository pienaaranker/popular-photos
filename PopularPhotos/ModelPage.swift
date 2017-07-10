//
//	ModelPage.swift
//
//	Create by Pienaar Anker on 10/7/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation
import SwiftyJSON

class ModelPage{

	var currentPage : Int!
	var feature : String!
	var filters : ModelFilter!
	var photos : [ModelPhoto]!
	var totalItems : Int!
	var totalPages : Int!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json == JSON.null{
			return
		}
		currentPage = json["current_page"].intValue
		feature = json["feature"].stringValue
		let filtersJson = json["filters"]
		if filtersJson != JSON.null{
			filters = ModelFilter(fromJson: filtersJson)
		}
		photos = [ModelPhoto]()
		let photosArray = json["photos"].arrayValue
		for photosJson in photosArray{
			let value = ModelPhoto(fromJson: photosJson)
			photos.append(value)
		}
		totalItems = json["total_items"].intValue
		totalPages = json["total_pages"].intValue
	}

}
