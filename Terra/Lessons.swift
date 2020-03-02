//
//  FirstViewController.swift
//  Terra
//
//  Created by Karl Steven  on 7/8/19.
//  Copyright © 2019 Karl Steven . All rights reserved.
//

import UIKit

class Lessons: UIViewController {
    let button_pressed = UserDefaults.standard
    let first_time = UserDefaults.standard
    //let attrs = [
        //NSAttributedString.Key.font: UIFont(name: "Poppins Semibold", size: 24)!
    //]
    
    
    
    @IBAction func history(_ sender: Any) {
        button_pressed.set(1, forKey: "button")
    }
    
    @IBAction func geography(_ sender: Any) {
        button_pressed.set(2, forKey: "button")
    }
    
    @IBAction func climatechange(_ sender: Any) {
        button_pressed.set(3, forKey: "button")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        
        //UINavigationBar.appearance().titleTextAttributes = attrs
    }
    override func viewDidAppear(_ animated: Bool) {
        first_time.set(1, forKey: "first")
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }

}

