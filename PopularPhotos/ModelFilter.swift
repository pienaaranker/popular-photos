//
//	ModelFilter.swift
//
//	Create by Pienaar Anker on 10/7/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation
import SwiftyJSON

class ModelFilter{

	var category : Bool!
	var exclude : Bool!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json == JSON.null{
			return
		}
		category = json["category"].boolValue
		exclude = json["exclude"].boolValue
	}

}
