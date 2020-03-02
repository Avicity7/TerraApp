//
//  SecondViewController.swift
//  Terra
//
//  Created by Karl Steven  on 7/8/19.
//  Copyright © 2019 Karl Steven . All rights reserved.
//

import UIKit
class OEE_code: UIViewController {
    //Codes for OEE
    let codes = [1234, 5678, 9999, 10101, 00001, 9876, 20202, 3456, 4321]
    var code:Int = 0
    let achieved = UserDefaults.standard
    let entered = UserDefaults.standard
    @IBOutlet weak var code_collect: UITextField!
    @IBOutlet weak var code_entered: UILabel!
    
    @IBAction func code_check(_ sender: Any) {
        //Making user input into Int
        let code = Int((code_collect.text! as NSString).intValue)
        //Checking if array contains user input
        if codes.contains(code) {
            code_entered.textColor = UIColor.green
            //Checking if user input matches array
            if code == codes[0]{
                code_entered.text = "CP 1 achieved!"
                entered.set(2, forKey: "CP1")
                
            }
            if code == codes[1]{
                code_entered.text = "CP 2 achieved!"
                entered.set(2, forKey: "CP2")
            }
            if code == codes[2]{
                code_entered.text = "CP 3 achieved!"
                entered.set(2, forKey: "CP3")
            }
            if code == codes[3]{
                code_entered.text = "CP 4 achieved!"
                entered.set(2, forKey: "CP4")
            }
            if code == codes[4]{
                code_entered.text = "CP 5 achieved!"
                entered.set(2, forKey: "CP5")
            }
            if code == codes[5]{
                code_entered.text = "CP 6 achieved!"
                entered.set(2, forKey: "CP6")
            }
            if code == codes[6]{
                code_entered.text = "CP 7 achieved!"
                entered.set(2, forKey: "CP7")
            }
            if code == codes[7]{
                code_entered.text = "CP 8 achieved!"
                entered.set(2, forKey: "CP8")
            }
            if code == codes[8]{
                code_entered.text = "CP 9 achieved!"
                entered.set(2, forKey: "CP9")
            }
            
         }
        else {
            //Checks if user input does not match array
            code_entered.textColor = UIColor.red
            code_entered.text = "Invalid code!"
            
        }
        if code == Int() {
            //User input IS empty
            code_entered.textColor = UIColor.black
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func code_collect(_ sender: UITextField) {
        
        sender.resignFirstResponder()
        //Making user input into Int
        let code = Int((code_collect.text! as NSString).intValue)
        //Checking if array contains user input
        if codes.contains(code) {
            code_entered.textColor = UIColor.green
            //Checking if user input matches array
            if code == codes[0]{
                code_entered.text = "CP 1 achieved!"
                entered.set(2, forKey: "CP1")
                
            }
            if code == codes[1]{
                code_entered.text = "CP 2 achieved!"
                entered.set(2, forKey: "CP2")
            }
            if code == codes[2]{
                code_entered.text = "CP 3 achieved!"
                entered.set(2, forKey: "CP3")
            }
            if code == codes[3]{
                code_entered.text = "CP 4 achieved!"
                entered.set(2, forKey: "CP4")
            }
            if code == codes[4]{
                code_entered.text = "CP 5 achieved!"
                entered.set(2, forKey: "CP5")
            }
            if code == codes[5]{
                code_entered.text = "CP 6 achieved!"
                entered.set(2, forKey: "CP6")
            }
            if code == codes[6]{
                code_entered.text = "CP 7 achieved!"
                entered.set(2, forKey: "CP7")
            }
            if code == codes[7]{
                code_entered.text = "CP 8 achieved!"
                entered.set(2, forKey: "CP8")
            }
            if code == codes[8]{
                code_entered.text = "CP 9 achieved!"
                entered.set(2, forKey: "CP9")
            }
            
        }
        else {
            //Checks if user input does not match array
            code_entered.textColor = UIColor.red
            code_entered.text = "Invalid code!"
            
        }
        if code == Int() {
            //User input IS empty
            code_entered.textColor = UIColor.black
        }
    }
    


}

