//
//  YoNupeModel.swift
//  YoNupeApp3
//
//  Created by William Janey on 7/26/17.
//  Copyright © 2017 William Janey. All rights reserved.
//

import Foundation
import UIKit

class User {
    
    var username: String
    var posts: [Post] = []
    var agreeToAttend: [Attending] = []
    
    var profilePicture: URL?
    
    init(username: String) {
        self.username = username
    }
    
    func post(_ post: Post) {
        posts.append(post)
        
    }
    
    func deleteThePost (_ post: Post) {
        // high level function
        
        posts = posts.filter({post != $0})
        
    }
    
    func acceptToAttend (_ post: Post){
        
        let acceptToAttend = Attending (user: self, post: post)
        agreeToAttend.append(acceptToAttend)
        post.attendees.append(acceptToAttend)
        
    }
    
    
    func unAgreeToAttend (_ post: Post) {
        agreeToAttend = agreeToAttend.filter({$0.post != post})// removing from AttendingArray
        //now need to remove from PostArray but tricky because have to reference that specific "attendees" but how  ????
        guard let attendeeToRemoveFromPost = post.attendees.filter({$0.post == post}).first else {
            
                return
            
            }
        
        
            post.attendees = agreeToAttend.filter({$0.id
                != attendeeToRemoveFromPost.id})
    }
    
}

//agreeToAttend = agreeToAttend.filter({$0.post != post})
//
//guard let attendeeToRemoveFromPost = post.attendees.filter({$0.post == post}).first! else {
//    acceptToAttend[post: post]
//    return
//
//}
//post.attendees = agreeToAttend.filter({$0.id
//    != id})
//
class Post: Equatable {
    
    var id: String // UUID
    
    var userContent: String
    
    // remember to break retain cycle
    // unomned because a Post cannot exist without an user
    unowned var user: User
    
    var image: URL?
    
    var attendees: [Attending] = []
    
    //var comments = [Comments]
    
    init(user: User, userContent: String) {
        self.userContent = userContent
        id = UUID().uuidString
        self.user = user
    }
}

// now I can equate two post

class Notification {
    
    var id: String
    unowned var postCount: Post
    
    unowned var userThatMadePost: User
    
    init(postCount: Post, userThatMadePost: User) {
        
        id = UUID().uuidString
        self.postCount = postCount
        self.userThatMadePost = userThatMadePost
    }
}

class Comment{
    
}

class Attending  { // like
    
    var id: String // UUID
    
    // remember to weakify // person that said the'll attend // this will lay in the Attending array
    unowned var user: User
    
    unowned var post: Post
    
    init(user: User, post: Post) {
        id = UUID().uuidString
        self.user = user
        self.post = post
    }
}


func ==(lhs: Post, rhs: Post) -> Bool {
    return lhs.id == rhs.id
}


