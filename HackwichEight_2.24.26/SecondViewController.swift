//
//  SecondViewController.swift
//  HackwichEight_2.24.26
//
//  Created by Bryleigh Ballesteros on 2/24/26.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var travelPlaces = ["Japan", "South Korea", "Italy", "New Zealand", "China"]
    
    var travelCities = ["Tokyo", "Seoul", "Rome", "Wellington", "Beijing"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return travelPlaces.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let text = travelPlaces[indexPath.row]
        //Problem set #2
        cell.detailTextLabel?.text = travelCities[indexPath.row]
        
        cell.textLabel?.text = text
        
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

