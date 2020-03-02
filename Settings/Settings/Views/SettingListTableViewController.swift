//
//  SettingListTableViewController.swift
//  Settings
//
//  Created by Daniel Merchan Rico on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import UIKit

class SettingListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return SettingController.settings.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingTableViewCell else {return UITableViewCell()}
        let setting = SettingController.settings[indexPath.row]
        cell.updateViews(with: setting)
        cell.delegate = self
        
        // Configure the cell...
        
        return cell
    }
    
}// End of Class

extension SettingListTableViewController: SettingTableViewCellDelegate{
    func settingSwitchTapped(for cell: SettingTableViewCell) {
        // TBVC -> Model Controller to update the isOn -> Cell Update
        guard let index = tableView.indexPath(for: cell) else {return}
        let setting = SettingController.settings[index.row]
        SettingController.toggleISOn(for: setting)
        cell.updateViews(with: setting)
    }
}
