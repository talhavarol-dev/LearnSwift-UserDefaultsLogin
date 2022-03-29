//
//  AnasayfaVC.swift
//  UserDefaultLogin
//
//  Created by Talha Varol on 28.03.2022.
//

import UIKit

class AnasayfaVC: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    let user = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
        
        let keyy = user.string(forKey: "email")
       
        labelSonuc.text = keyy
        
    }
    
    @IBAction func exitButton(_ sender: Any) {
        
        user.removeObject(forKey: "email")
        user.removeObject(forKey: "password")
        
        exit(-1)
    }
    
    
}
