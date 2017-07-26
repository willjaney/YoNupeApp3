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

class SecondViewController: UIViewController {
    @IBAction func backButtonPress(_ sender: Any) {

          dismiss(animated: true, completion: nil)
        
    

//        let backbutton = UIBarButtonItem()
//        backbutton.tintColor?.cgColor.alpha.bitPattern

    }
    
    let NupeColor1 = UIColor(colorLiteralRed: 254/255.0, green: 246/255.0, blue: 224/255.0, alpha: 1.0)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Navigation bar setup
        navigationController?.navigationBar.barTintColor = UIColor(red: 137/255.0, green: 37/255.0, blue: 47/255.0, alpha: 1.0)
//        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        self.title = "Executive Board"
        
    
       
//        let backButton = UIBarButtonItem()
//        backButton.title = "Back"
//        navigationItem.backBarButtonItem = backButton
        
        
        
        
    }
   
}
var EBoardpositions = ["Polemarch" , "Vice-Polemarch" , "Keeper of Records" , "Keeper of Exchequer" , "Board of Directors"]

extension SecondViewController: UITableViewDataSource {
    
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
        cell.backgroundColor = NupeColor1
        
        return cell
}
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 200.0;//Choose your custom row height
    }
    
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return EBoardpositions[section]
//    }

}

extension SecondViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
            }
    



}

