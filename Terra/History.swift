//
//  History.swift
//  Terra
//
//  Created by Karl Steven  on 14/8/19.
//  Copyright © 2019 Karl Steven . All rights reserved.
//
import UIKit

class history:UIViewController, UINavigationControllerDelegate,UIScrollViewDelegate {
    let button_pressed = UserDefaults.standard
    @IBOutlet weak var scrollview: UIScrollView!
    
    override func viewDidLoad() {
        self.title = "History"
        scrollview.contentSize = CGSize(width: self.view.frame.width, height: 1399)
        scrollview.delegate = self //self.navigationController?.navigationBar.titleTextAttributes =
           // [NSAttributedString.Key.font: UIFont(name: "Poppins-SemiBold.ttf", size: 25)!]
    }
    override func viewDidAppear(_ animated: Bool) {
    }
    
    
    
}


