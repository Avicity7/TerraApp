//
//  TabBarController.swift
//  Terra
//
//  Created by Karl Steven  on 11/8/19.
//  Copyright © 2019 Karl Steven . All rights reserved.
//

import UIKit
class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.selectedIndex = 2
        
    }
        // Remove default border line
        //UITabBar.appearance().layer.borderWidth = 0.0
        //UITabBar.appearance().clipsToBounds = true
    }


