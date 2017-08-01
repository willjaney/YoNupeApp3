//
//  PostViewController.swift
//  YoNupeApp3
//
//  Created by William Janey on 7/26/17.
//  Copyright © 2017 William Janey. All rights reserved.
//

import Foundation
import UIKit

class PostViewController: UIViewController {
    @IBOutlet weak var currentUserNameLabel: UILabel!

    @IBAction func backButtonPress(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let currentUser = YoNupeDataProvider.shared.currentUser
        currentUserNameLabel?.text = currentUser.username

        // Do any additional setup after loading the view.
    }

}
