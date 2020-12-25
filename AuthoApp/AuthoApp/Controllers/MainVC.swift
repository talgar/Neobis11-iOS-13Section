//
//  ViewController.swift
//  AuthoApp
//
//  Created by admin on 24.12.2020.
//

import UIKit
import FirebaseAuth
import FBSDKCoreKit
import FBSDKLoginKit

class MainVC: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginBTN: UIButton!
    @IBOutlet weak var signUpBTN: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginBTN.layer.cornerRadius = 6
        signUpBTN.layer.cornerRadius = 6
    }

    //MARK: - login
    @IBAction func loginAct(_ sender: Any) {
        let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            
            if error != nil {
                self.showAlert(title: "Notice", message: error!.localizedDescription)
            } else {
                self.homeViewSegue()
            }
        }
    }
    
    //MARK: - sign up
    @IBAction func signUpAct(_ sender: Any) {
        let signUpVC = storyboard?.instantiateViewController(identifier: Constants.signUpVC) as! SignUpVC
        view.window?.rootViewController = signUpVC
        view.window?.makeKeyAndVisible()
    }

    //MARK: - sign up with ...
    @IBAction func facebookAct(_ sender: Any) {
        let loginManager = LoginManager()
        loginManager.logIn(permissions: ["public_profile","email"], from: self) { (result, error) in
           
            if let error = error {
                print("Failed to login: \(error.localizedDescription)")
                return
            }
            
            guard let accessToken = AccessToken.current else {
                print("Failed to get access token")
                return
            }
            
            let credential = FacebookAuthProvider.credential(withAccessToken: accessToken.tokenString)
            
            Auth.auth().signIn(with: credential) { (user, error) in
                if let error = error {
                    print("Login error: \(error.localizedDescription)")
                    self.showAlert(title: "Login error", message: error.localizedDescription)
                    return
                } else {
                    print("Success")
                    self.homeViewSegue()
                }
            }
        }
    }
    
    
    @IBAction func googleAct(_ sender: Any) {
    }
    
    
    @IBAction func phoneNumberAct(_ sender: Any) {
        let phoneNumberVC = storyboard?.instantiateViewController(identifier: "") // as!
        
        view.window?.rootViewController = phoneNumberVC
        view.window?.makeKeyAndVisible()
        // change it to phoneNumber VC
    }
    

}

