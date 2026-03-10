//
//  ViewController.swift
//  HackwichEight_2.24.26
//
//  Created by Bryleigh Ballesteros on 2/24/26.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    let myFriendsArray = ["Rachael", "Dakota", "Chayce", "Elena", "Haru"]
    
    let myFriendsHomeArray = ["Kaneohe", "Kahala", "Kapolei", "Honolulu", "Mililani"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //we want to return the same number of rows that equate to the exact number of elements in the array
        return myFriendsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let text = myFriendsArray[indexPath.row]
        //Problem set #2
        cell.detailTextLabel?.text = myFriendsHomeArray[indexPath.row]
        
        cell.textLabel?.text = text
        
        return cell
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        // Do any additional setup after loading the view.
    }


}

