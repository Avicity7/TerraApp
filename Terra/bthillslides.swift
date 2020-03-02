//
//  bthillslides.swift
//  Terra
//
//  Created by Karl Steven  on 6/9/19.
//  Copyright © 2019 Karl Steven. All rights reserved.
//

import UIKit

class bthillslides: UIViewController {
    let filename = ["bthill2.png",
                    
                    "bthill3.png",
                    
                    "bthill4.png",
                    
                    "bthill5.png"]
    
    var currrentPhoto = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBAction func prevPic(_ sender: Any) {
        currrentPhoto = currrentPhoto - 1
        if currrentPhoto <= 0 {
            currrentPhoto = 0
        }
        imageView.image = UIImage(named: filename[currrentPhoto])
        pageControl.currentPage = currrentPhoto
    }
    
    @IBAction func nextPic(_ sender: Any) {
        if currrentPhoto < filename.count - 1 {
            
            currrentPhoto += 1
            imageView.image = UIImage(named: filename[currrentPhoto])
            
            pageControl.currentPage = currrentPhoto
            

        }
    }
    
    
    @IBAction func chngPic(_ sender: UIPageControl) {
        currrentPhoto = pageControl.currentPage
        
        imageView.image = UIImage(named: filename[currrentPhoto])
    }
    override func viewDidLoad() {
        pageControl.numberOfPages = filename.count
        let left_swipe = UISwipeGestureRecognizer(target: self, action: #selector(nextPic(_:)))
        left_swipe.direction = .left
        self.view.addGestureRecognizer(left_swipe)
        let right_swipe = UISwipeGestureRecognizer(target: self, action: #selector(prevPic(_:)))
        right_swipe.direction = .right
        self.view.addGestureRecognizer(right_swipe)
    }
}
