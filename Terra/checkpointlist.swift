//
//  checkpointlist.swift
//  Terra
//
//  Created by Karl Steven  on 7/8/19.
//  Copyright © 2019 Karl Steven . All rights reserved.
//

import UIKit

class checkpointlist: UIViewController, UIScrollViewDelegate{
    @IBOutlet weak var scrollview: UIScrollView!
    @IBOutlet weak var CP1: UIButton!
    @IBOutlet weak var CP2: UIButton!
    @IBOutlet weak var CP3: UIButton!
    @IBOutlet weak var CP4: UIButton!
    @IBOutlet weak var CP5: UIButton!
    @IBOutlet weak var CP6: UIButton!
    @IBOutlet weak var CP7: UIButton!
    @IBOutlet weak var CP8: UIButton!
    @IBOutlet weak var CP9: UIButton!
    
    
    
    
    let entered = UserDefaults.standard
    let cppressed = UserDefaults.standard
    
    @IBAction func cp1(_ sender: Any) {
        cppressed.set(1, forKey: "cppressed")
    }
    
    @IBAction func cp2(_ sender: Any) {
        cppressed.set(2, forKey: "cppressed")
    }
    
    @IBAction func cp3(_ sender: Any) {
        cppressed.set(3, forKey: "cppressed")
    }
    
    @IBAction func cp4(_ sender: Any) {
        cppressed.set(4, forKey: "cppressed")
    }
    
    
    @IBAction func reset(_ sender: Any) {
        let alertController = UIAlertController(title: "Reset Checkpoints", message: "Are you sure?", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Reset", style: UIAlertAction.Style.destructive) {
            UIAlertAction in
            self.entered.set(0, forKey: "CP1")
            self.CP1.setImage(UIImage(named:"CP1_not.png"), for: .normal)
            self.entered.set(0, forKey: "CP2")
            self.CP2.setImage(UIImage(named:"CP2_not.png"), for: .normal)
            self.entered.set(0, forKey: "CP3")
            self.CP3.setImage(UIImage(named:"CP3_not.png"), for: .normal)
            self.entered.set(0, forKey: "CP4")
            self.CP4.setImage(UIImage(named:"CP4_not.png"), for: .normal)
            self.entered.set(0, forKey: "CP5")
            self.CP5.setImage(UIImage(named:"CP5_not.png"), for: .normal)
            self.entered.set(0, forKey: "CP6")
            self.CP6.setImage(UIImage(named:"CP6_not.png"), for: .normal)
            self.entered.set(0, forKey: "CP7")
            self.CP7.setImage(UIImage(named:"CP7_not.png"), for: .normal)
            self.entered.set(0, forKey: "CP8")
            self.CP8.setImage(UIImage(named:"CP8_not.png"), for: .normal)
            self.entered.set(0, forKey: "CP9")
            self.CP9.setImage(UIImage(named:"CP9_not.png"), for: .normal)
        })
        self.present(alertController, animated: true, completion: nil)

    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollview.contentSize = CGSize(width: self.view.frame.width, height: 1500)
        scrollview.delegate = self
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        if entered.integer(forKey: "CP1") == 2 {
            CP1.setImage(UIImage(named:"CP1_reached.png"), for: .normal)
        }
        if entered.integer(forKey: "CP2") == 2 {
            CP2.setImage(UIImage(named:"CP2_reached.png"), for: .normal)
        }
        if entered.integer(forKey: "CP3") == 2 {
            CP3.setImage(UIImage(named:"CP3_reached.png"), for: .normal)
        }
        if entered.integer(forKey: "CP4") == 2 {
            CP4.setImage(UIImage(named:"CP4_reached.png"), for: .normal)
        }
        if entered.integer(forKey: "CP5") == 2 {
            CP5.setImage(UIImage(named:"CP5_reached.png"), for: .normal)
        }
        if entered.integer(forKey: "CP6") == 2 {
            CP6.setImage(UIImage(named:"CP6_reached.png"), for: .normal)
        }
        if entered.integer(forKey: "CP7") == 2 {
            CP7.setImage(UIImage(named:"CP7_reached.png"), for: .normal)
        }
        if entered.integer(forKey: "CP8") == 2 {
            CP8.setImage(UIImage(named:"CP8_reache.png"), for: .normal)
        }
        if entered.integer(forKey: "CP9") == 2 {
            CP9.setImage(UIImage(named:"CP9_reached.png"), for: .normal)
        }
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }
}
