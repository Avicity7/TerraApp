//
//  Geography.swift
//  Terra
//
//  Created by Karl Steven  on 14/8/19.
//  Copyright © 2019 Karl Steven . All rights reserved.
//

import UIKit

class geography:UIViewController, UIScrollViewDelegate {
    let buttonpressed = UserDefaults.standard
    
    @IBOutlet weak var scrollview: UIScrollView!
 
    @IBAction func mapreading(_ sender: Any) {
        buttonpressed.set(2, forKey: "mapreading")
    }
    
    @IBAction func rainforest(_ sender: Any) {
        buttonpressed.set(2, forKey: "rainforest")
    }
    
    
    override func viewDidLoad() {
        scrollview.contentSize = CGSize(width: self.view.frame.width, height: 1399)
        scrollview.delegate = self
        self.title = "Geography"
        
    }
    override func viewDidAppear(_ animated: Bool) {
        buttonpressed.set(0, forKey: "mapreading")
        buttonpressed.set(0, forKey: "rainforest")
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}


