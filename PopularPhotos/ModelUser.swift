//
//	ModelUser.swift
//
//	Create by Pienaar Anker on 10/7/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation
import SwiftyJSON

class ModelUser{

	var affection : Int!
	var avatars : ModelAvatar!
	var city : String!
	var country : String!
	var coverUrl : String!
	var firstname : String!
	var fullname : String!
	var id : Int!
	var lastname : String!
	var storeOn : Bool!
	var upgradeStatus : Int!
	var username : String!
	var userpicHttpsUrl : String!
	var userpicUrl : String!
	var usertype : Int!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json == JSON.null{
			return
		}
		affection = json["affection"].intValue
		let avatarsJson = json["avatars"]
		if avatarsJson != JSON.null{
			avatars = ModelAvatar(fromJson: avatarsJson)
		}
		city = json["city"].stringValue
		country = json["country"].stringValue
		coverUrl = json["cover_url"].stringValue
		firstname = json["firstname"].stringValue
		fullname = json["fullname"].stringValue
		id = json["id"].intValue
		lastname = json["lastname"].stringValue
		storeOn = json["store_on"].boolValue
		upgradeStatus = json["upgrade_status"].intValue
		username = json["username"].stringValue
		userpicHttpsUrl = json["userpic_https_url"].stringValue
		userpicUrl = json["userpic_url"].stringValue
		usertype = json["usertype"].intValue
	}

}
