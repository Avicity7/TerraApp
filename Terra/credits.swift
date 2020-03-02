//
//  credits.swift
//  Terra
//
//  Created by Karl Steven  on 19/8/19.
//  Copyright © 2019 Karl Steven. All rights reserved.
//

import UIKit
class credits: UIViewController {
    @IBAction func about(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let balanceViewController = storyBoard.instantiateViewController(withIdentifier: "info") as! info
        self.present(balanceViewController, animated: true, completion: nil)

    }
    
    
    override func viewDidLoad() {
        
    }
}
