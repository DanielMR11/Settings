//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Daniel Merchan Rico on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {
    
    //MARK: - Outlets
    @IBOutlet weak var settingSwitch: UISwitch!
   
    @IBOutlet weak var settingIconImageView: UIImageView!
    
    
    @IBOutlet weak var settingNameLabel: UILabel!
    
    //MARK: - Actions

    @IBAction func settingSwtichToggle(_ sender: Any) {
        //TODO: - add this
    }
    
    //MARK: - Helper Methods
    
    func updateViews(with setting: Setting) {
        settingIconImageView.image = setting.icon
        settingNameLabel.text = setting.settingTitle
        settingSwitch.isOn = setting.isOn
        
        backgroundColor = setting.isOn ? .magenta : .white

//        if setting.isOn == true {
//            backgroundColor = .magenta
//        } else {
//            backgroundColor = .white
//        }
    }
}// End Classs
