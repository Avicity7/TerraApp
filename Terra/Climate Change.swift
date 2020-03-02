//
//  Climate Change.swift
//  Terra
///Users/karlsteven/Desktop/Terra/Terra/Climate Change.swift
//  Created by Karl Steven  on 14/8/19.
//  Copyright © 2019 Karl Steven . All rights reserved.
//

import UIKit

class climatechange:UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var scrollview: UIScrollView!
    let button_pressed = UserDefaults.standard
    override func viewDidLoad() {
        self.title = "Climate Change"
        scrollview.contentSize = CGSize(width: self.view.frame.width, height: 1399)
        scrollview.delegate = self
    }
    override func viewDidAppear(_ animated: Bool) {
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}


