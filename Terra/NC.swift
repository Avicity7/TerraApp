//
//  NC.swift
//  Terra
//
//  Created by Karl Steven  on 15/8/19.
//  Copyright © 2019 Karl Steven . All rights reserved.
//

import UIKit
class TBC:UITabBarController{
    
    override func viewDidLoad() {
        // Remove default border line
        UITabBar.appearance().layer.borderWidth = 0.0
        UITabBar.appearance().clipsToBounds = true
        self.selectedIndex = 2
    }
    
}
