//
//  bthill.swift
//  Terra
//
//  Created by Karl Steven  on 4/9/19.
//  Copyright © 2019 Karl Steven. All rights reserved.
//

import UIKit

class bthill: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollview: UIScrollView!
    
    override func viewDidLoad() {
        scrollview.contentSize = CGSize(width: self.view.frame.width, height: 1800)
        scrollview.delegate = self
        self.title = "Bukit Timah Hill"
    }
}
