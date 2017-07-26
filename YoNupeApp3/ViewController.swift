//
//  ViewController.swift
//  YoNupeApp3
//
//  Created by William Janey on 7/21/17.
//  Copyright © 2017 William Janey. All rights reserved.
//

// respective notes, meeting dates,

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func nextPageOption(_ sender: Any) {
        
        //        var button = UIButton ()
        //        button.buttonType.
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barTintColor = UIColor(red: 137/255.0, green: 37/255.0, blue: 47/255.0, alpha: 1.0)
        //        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        self.title = "Yo! NUPE!"
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

var headers = ["Executive Board", "Committees", "Calendar", "Photos"]
// var committeesArray = ["Fundraising", "Social", "Performance", "Community Service"]

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return headers.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return  1
        //        switch section {
        //        case 0...3:
        //            return 5
        //        default:
        //            return 10
        //        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyCustomTableViewCell
        cell.textLabel?.text = headers[indexPath.section]
        cell.textLabel?.font = UIFont.systemFont(ofSize: 36)
        cell.textLabel?.font.fontDescrip
        
        
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 200.0;//Choose your custom row height
    }
    
    //        let cell = UITableViewCell()
    //
    //        cell.backgroundColor = .red
    //        cell.backgroundColor = indexPath.row % 2 == 0 ? .red : UIColor.clear
    //        cell.textLabel?.text = "\(indexPath)"
    //
    //        return cell
    //
    //    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return headers[section]
//        
//    }

}

extension ViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return indexPath.row % 2 == 0 ? 40 : 60
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondVCNavController") as! UINavigationController
        present(secondVC, animated: true, completion: nil)
    }
}


