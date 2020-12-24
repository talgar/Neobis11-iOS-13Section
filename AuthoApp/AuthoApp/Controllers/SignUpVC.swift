//
//  SignUpVC.swift
//  AuthoApp
//
//  Created by admin on 24.12.2020.
//

import UIKit
import Firebase


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

    
    @IBAction func signUpAct(_ sender: Any) {
        
        let error = validateFields()
        if error != nil {
            showAlert(title: "Notice", message: error!)
        } else {
            let firstName = firstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
            let lastName = lastNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
            let email = emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = passwordTextfield.text?.trimmingCharacters(in: .whitespacesAndNewlines)
            
        }
    }
        

    
    func validateFields() -> String? {
        
        // Check that all fields are filled in
        if firstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            lastNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passwordTextfield.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            
            return "Please fill in all fields"
        }
        
        //Check if the password is secure
        let cleanedPassword = passwordTextfield.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isPasswordValid(cleanedPassword) == false {
            
            return "Please make sure your password is at least 8 characters, contains a special character and a number"
        }
        return nil
    }
    
    
    @IBAction func signInWithAct(_ sender: Any) {

        let mainVC = storyboard?.instantiateViewController(identifier: "MainVC") as? MainVC
        
        view.window?.rootViewController = mainVC
        view.window?.makeKeyAndVisible()
    }
    
    

}
