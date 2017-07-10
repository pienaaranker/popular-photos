//
//	ModelPhoto.swift
//
//	Create by Pienaar Anker on 10/7/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation
import SwiftyJSON

class ModelPhoto{

	var aperture : String!
	var camera : String!
	var category : Int!
	var collectionsCount : Int!
	var commentsCount : Int!
	var converted : Int!
	var convertedBits : Int!
	var createdAt : String!
	var critiquesCalloutDismissed : Bool!
	var cropVersion : Int!
	var descriptionField : AnyObject!
	var favoritesCount : Int!
	var focalLength : String!
	var forCritique : Bool!
	var forSale : Bool!
	var forSaleDate : AnyObject!
	var height : Int!
	var hiResUploaded : Int!
	var highestRating : Float!
	var highestRatingDate : String!
	var id : Int!
	var imageFormat : String!
	var imageUrl : String!
	var images : [ModelImage]!
	var isFreePhoto : Bool!
	var iso : String!
	var latitude : AnyObject!
	var lens : String!
	var licenseType : Int!
	var licensingRequested : Bool!
	var licensingSuggested : Bool!
	var location : AnyObject!
	var longitude : AnyObject!
	var name : String!
	var nsfw : Bool!
	var positiveVotesCount : Int!
	var privacy : Bool!
	var profile : Bool!
	var rating : Float!
	var salesCount : Int!
	var shutterSpeed : String!
	var status : Int!
	var takenAt : String!
	var timesViewed : Int!
	var url : String!
	var user : ModelUser!
	var userId : Int!
	var votesCount : Int!
	var watermark : Bool!
	var width : Int!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json == JSON.null{
			return
		}
		aperture = json["aperture"].stringValue
		camera = json["camera"].stringValue
		category = json["category"].intValue
		collectionsCount = json["collections_count"].intValue
		commentsCount = json["comments_count"].intValue
		converted = json["converted"].intValue
		convertedBits = json["converted_bits"].intValue
		createdAt = json["created_at"].stringValue
		critiquesCalloutDismissed = json["critiques_callout_dismissed"].boolValue
		cropVersion = json["crop_version"].intValue
		descriptionField = json["description"].stringValue as AnyObject
		favoritesCount = json["favorites_count"].intValue
		focalLength = json["focal_length"].stringValue
		forCritique = json["for_critique"].boolValue
		forSale = json["for_sale"].boolValue
		forSaleDate = json["for_sale_date"].stringValue as AnyObject
		height = json["height"].intValue
		hiResUploaded = json["hi_res_uploaded"].intValue
		highestRating = json["highest_rating"].floatValue
		highestRatingDate = json["highest_rating_date"].stringValue
		id = json["id"].intValue
		imageFormat = json["image_format"].stringValue
		imageUrl = json["image_url"].stringValue
		images = [ModelImage]()
		let imagesArray = json["images"].arrayValue
		for imagesJson in imagesArray{
			let value = ModelImage(fromJson: imagesJson)
			images.append(value)
		}
		isFreePhoto = json["is_free_photo"].boolValue
		iso = json["iso"].stringValue
		latitude = json["latitude"].stringValue as AnyObject
		lens = json["lens"].stringValue
		licenseType = json["license_type"].intValue
		licensingRequested = json["licensing_requested"].boolValue
		licensingSuggested = json["licensing_suggested"].boolValue
		location = json["location"].stringValue as AnyObject
		longitude = json["longitude"].stringValue as AnyObject
		name = json["name"].stringValue
		nsfw = json["nsfw"].boolValue
		positiveVotesCount = json["positive_votes_count"].intValue
		privacy = json["privacy"].boolValue
		profile = json["profile"].boolValue
		rating = json["rating"].floatValue
		salesCount = json["sales_count"].intValue
		shutterSpeed = json["shutter_speed"].stringValue
		status = json["status"].intValue
		takenAt = json["taken_at"].stringValue
		timesViewed = json["times_viewed"].intValue
		url = json["url"].stringValue
		let userJson = json["user"]
		if userJson != JSON.null{
			user = ModelUser(fromJson: userJson)
		}
		userId = json["user_id"].intValue
		votesCount = json["votes_count"].intValue
		watermark = json["watermark"].boolValue
		width = json["width"].intValue
	}

}
