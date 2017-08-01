//
//  MyCustomTableViewCell.swift
//  YoNupeApp3
//
//  Created by William Janey on 7/24/17.
//  Copyright © 2017 William Janey. All rights reserved.
//

// plac e her things like notification numbers similar to GroupMe🤷🏾‍♂️

import UIKit

protocol NotificationAction {
    
}

class MyCustomTableViewCell: UITableViewCell {

    
    @IBOutlet weak var latestContentPosted: UILabel!
    
    @IBOutlet weak var usernameTitleLabel: UILabel!

    @IBOutlet weak var usernameLiteralName: UILabel!
   
    @IBOutlet weak var notificationNumber: UIImageView!
    
   
    @IBOutlet weak var userProfilePicture: UIImageView!
   
    
    var user: User? {
        didSet {
            
        }
    }
    
    var post: Post? {
        didSet {
            guard let post = post else {return}
            usernameLiteralName.text = post.user.username
            latestContentPosted.text = post.userContent
            //usernameLiteralName.text = tab that they click
//            if Post >= 1 {
//                notificationNumber //animation of numbers going up
//            }
           
        }
        
        
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
