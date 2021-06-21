//
//  SettingsViewController.swift
//  PocketCA
//
//  Created by Hissah on 22/9/19.
//  Copyright © 2019 RMIT. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var SettingsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        SettingsTableView.delegate = self
        SettingsTableView.dataSource = self

    }
 
 
    let SettingsArray = ["Help", "About us"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingsArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = SettingsTableView.dequeueReusableCell(withIdentifier: "SettingsCell", for: indexPath)
        cell.textLabel?.text = SettingsArray[indexPath.row]
        
        return cell
    }
   
    
 
    
    
    

}
