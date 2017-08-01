//
//  yoNupeDataProvider.swift
//  YoNupeApp3
//
//  Created by William Janey on 7/28/17.
//  Copyright © 2017 William Janey. All rights reserved.
//

import Foundation

class YoNupeDataProvider {
    //user sign in 
    // grab fresh post
    //actually send network requests to post, attend...
    //user logout
    //search
    
    //singleton -- one object in memory for a particular class
    
    
static let shared = YoNupeDataProvider()
    
    private init () {
        self.user = User(username: "Will Janey")
        self.user.profilePicture = URL(string: "http://www.tellusaboutus.com/comments/images/BK-WebComment/BB_WHOPPER-v1.png")
        
    } // cant build anywhere else but here
    
    
    private let user: User
    

    //computed property
    var currentUser: User {
        return user
    }

}
