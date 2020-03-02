//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Daniel Merchan Rico on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import UIKit

protocol SettingTableViewCellDelegate: class {
    //Step one
    func settingSwitchTapped(for cell: SettingTableViewCell)
}

class SettingTableViewCell: UITableViewCell {
    
    //MARK: - Outlets
    @IBOutlet weak var settingSwitch: UISwitch!
   
    @IBOutlet weak var settingIconImageView: UIImageView!
    
    
    @IBOutlet weak var settingNameLabel: UILabel!
    
    //MARK: - Properties
    // Step two
    weak var delegate: SettingTableViewCellDelegate?
    
    //MARK: - Actions

    @IBAction func settingSwtichToggle(_ sender: Any) {
        delegate?.settingSwitchTapped(for: self)
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
