//
//  MainViewController.swift
//  E-commerce
//
//  Created by kariman eltawel on 01/03/2023.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func startShopping(_ sender: Any) {
        
    }
    
    @IBAction func signUp(_ sender: Any) {
        let signup = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        
        self.navigationController?.pushViewController(signup, animated: true)
    }
    
    @IBAction func alreadyHaveAccount(_ sender: Any) {
        let already = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        
        self.navigationController?.pushViewController(already, animated: true)
    }
    
}