//
//	ModelAvatar.swift
//
//	Create by Pienaar Anker on 10/7/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation
import SwiftyJSON

class ModelAvatar{

	var defaultField : ModelDefault!
	var large : ModelDefault!
	var small : ModelDefault!
	var tiny : ModelDefault!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json == JSON.null{
			return
		}
		let defaultFieldJson = json["default"]
		if defaultFieldJson != JSON.null{
			defaultField = ModelDefault(fromJson: defaultFieldJson)
		}
		let largeJson = json["large"]
		if largeJson != JSON.null{
			large = ModelDefault(fromJson: largeJson)
		}
		let smallJson = json["small"]
		if smallJson != JSON.null{
			small = ModelDefault(fromJson: smallJson)
		}
		let tinyJson = json["tiny"]
		if tinyJson != JSON.null{
			tiny = ModelDefault(fromJson: tinyJson)
		}
	}

}
