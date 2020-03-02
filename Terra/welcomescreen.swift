//
//  welcomescreen.swift
//  Terra
//
//  Created by Karl Steven  on 27/8/19.
//  Copyright © 2019 Karl Steven. All rights reserved.
//

import UIKit
class welcomescreen: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        if UserDefaults.standard.integer(forKey: "first") == 1 {
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let balanceViewController = storyBoard.instantiateViewController(withIdentifier: "main") as! TBC
            self.present(balanceViewController, animated: true, completion: nil)

        }
        
    }
}
