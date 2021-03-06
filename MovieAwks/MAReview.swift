//
//  MAReview.swift
//  MovieAwks
//
//  Created by Mark Hall on 2016-05-28.
//  Copyright © 2016 markhall. All rights reserved.
//

import UIKit

class MAReview: NSObject {
    
    var ratingValue: NSNumber?
    var comment: String?
    var user: String?
    var movieID: String?
    var timestamp: Date?

    override init() {
        super.init()
    }
    
    init(dict: Dictionary<String, AnyObject>) {
        super.init()
        ratingValue = dict["ratingValue"] as? NSNumber
        comment = dict["comment"] as? String
        user = dict["user"] as? String
        movieID = dict["movieID"] as? String
        
        let dateString = dict["timestamp"] as? String
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss ZZZ"
        timestamp = formatter.date(from: dateString!)
        
    }
    
}
