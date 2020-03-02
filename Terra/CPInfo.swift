//
//  cpinfo.swift
//  Terra
//
//  Created by Karl Steven  on 14/8/19.
//  Copyright © 2019 Karl Steven . All rights reserved.
//

import UIKit

class cpinfo:UIViewController  {
    let cppressed = UserDefaults.standard
    override func viewDidLoad() {
    }
    override func viewDidAppear(_ animated: Bool) {
        if cppressed.integer(forKey: "cppressed") == 1 {
            self.title = "Checkpoint 1"
        }
        if cppressed.integer(forKey: "cppressed") == 2 {
            self.title = "Checkpoint 2"
        }
        if cppressed.integer(forKey: "cppressed") == 3 {
            self.title = "Checkpoint 3"
        }
        if cppressed.integer(forKey: "cppressed") == 4 {
            self.title = "Checkpoint 4"
        }
        
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.default
    }
    
}
