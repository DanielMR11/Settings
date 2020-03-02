//
//  SettingController.swift
//  Settings
//
//  Created by Daniel Merchan Rico on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import Foundation
class SettingController {
    
    //MARK: - Source OF Truth
    let settings: [Setting] = {
        let music = Setting(settingTitle: "Music", icon: #imageLiteral(resourceName: "iTunes"), isOn: false)
        let appStore = Setting(settingTitle: "App Store", icon: #imageLiteral(resourceName: "appStore"), isOn: false)
        let iBooks = Setting(settingTitle: "iBooks", icon: #imageLiteral(resourceName: "iBooks"), isOn: true)
        
        return[music,appStore,iBooks]
    }()
    //MARK: - Methods
    
    func toggleISOn(for setting: Setting) {
        
    }
        
    
}//End The Class
