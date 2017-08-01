//
//  secondViewController.swift
//  YoNupeApp3
//
//  Created by William Janey on 7/23/17.
//  Copyright © 2017 William Janey. All rights reserved.
//

import Foundation
import UIKit

//let tintColor = UIColor()

class ListOfPositionViewController: UIViewController {
    @IBAction func backButtonPress(_ sender: Any) {

          dismiss(animated: true, completion: nil)
        
    

//        let backbutton = UIBarButtonItem()
//        backbutton.tintColor?.cgColor.alpha.bitPattern

    }
    
    
    @IBOutlet weak var usernameTitleLabel: UILabel!
    
    @IBOutlet weak var latestContentPosted: UILabel!
    
    @IBOutlet weak var notificationNumber: UIImageView!
    
    @IBOutlet weak var userProfilePicture: UIImageView!
    
    
    let KremeNupeColor1 = UIColor(colorLiteralRed: 254/255.0, green: 255/255.0, blue: 240/255.0, alpha: 1.0)
    let KrimsonNupeColor2 = UIColor(colorLiteralRed: 130/255.0, green: 0/255.0, blue: 31/255.0, alpha: 1.0)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Navigation bar setup
        navigationController?.navigationBar.barTintColor = KremeNupeColor1
//        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : KremeNupeColor1]
        self.title = "Executive Board"
        
    
       
//        let backButton = UIBarButtonItem()
//        backButton.title = "Back"
//        navigationItem.backBarButtonItem = backButton
        
        
        
        
    }
   
}
var EBoardpositions = ["Polemarch" , "Vice-Polemarch" , "Keeper of Records" , "Keeper of Exchequer" , "Board of Directors"]

extension ListOfPositionViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return EBoardpositions.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return  1
       
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "celltwo", for: indexPath)
        cell.textLabel?.text = EBoardpositions[indexPath.section]
        cell.textLabel?.font = UIFont.systemFont(ofSize: 36)
        cell.backgroundColor = KremeNupeColor1
        cell.textLabel?.textColor = KrimsonNupeColor2
        
        return cell
}
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 125.0;//Choose your custom row height
    }
    
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return EBoardpositions[section]
//    }

}

extension ListOfPositionViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
            }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let ThirdVC = storyboard?.instantiateViewController(withIdentifier: "ThirdVCNavController") as! UINavigationController
        present(ThirdVC, animated: true, completion: nil)
    }
    



}

