//
//  SignUpVC.swift
//  AuthoApp
//
//  Created by admin on 24.12.2020.
//

import UIKit

class SignUpVC: UIViewController {

    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBOutlet weak var signUpBTN: UIButton!
    @IBOutlet weak var signInWithBTN: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signUpBTN.layer.cornerRadius = 6
        signInWithBTN.layer.cornerRadius = 6
    }

    @IBAction func signInWithAct(_ sender: Any) {

        let mainVC = storyboard?.instantiateViewController(identifier: "MainVC") as? MainVC
        
        view.window?.rootViewController = mainVC
        view.window?.makeKeyAndVisible()
    }
}
