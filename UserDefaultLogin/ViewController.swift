//
//  ViewController.swift
//  UserDefaultLogin
//
//  Created by Talha Varol on 28.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    let user = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let key = user.string(forKey: "email") ?? "Not"
        let pass = user.string(forKey: "password") ?? "Not"
        
        if key != "Not" && pass != "Not"{
            performSegue(withIdentifier: "loginToHomePage", sender: nil)
        }
        
        
    }

    @IBAction func loginButton(_ sender: Any) {
        
        if let keyy = emailText.text, let pass = passwordText.text{
            if keyy == "admin" && pass == "123456"{
                user.set(keyy, forKey: "email")
                user.set(pass, forKey: "password")
                performSegue(withIdentifier: "loginToHomePage", sender: nil)
            }else{
                print("hatalı giriş")
            }
        }
    }
    
}

