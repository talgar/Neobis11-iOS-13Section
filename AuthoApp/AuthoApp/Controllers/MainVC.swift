//
//  ViewController.swift
//  AuthoApp
//
//  Created by admin on 24.12.2020.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    @IBOutlet weak var loginBTN: UIButton!
    @IBOutlet weak var signUpBTN: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpBtn()
    }

    @IBAction func signUpAct(_ sender: Any) {
        let signUpVC = storyboard?.instantiateViewController(identifier: "SignUpVC") as! SignUpVC
        view.window?.rootViewController = signUpVC
        view.window?.makeKeyAndVisible()
    }
    
    
    func setUpBtn(){
        loginBTN.layer.cornerRadius = 6
        signUpBTN.layer.cornerRadius = 6
    }

}

