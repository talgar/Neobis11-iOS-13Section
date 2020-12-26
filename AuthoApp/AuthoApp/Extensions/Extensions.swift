//
//  Extentions.swift
//  AuthoApp
//
//  Created by admin on 25.12.2020.
//

import Foundation
import UIKit
import GoogleSignIn
import Firebase

extension UIViewController :  GIDSignInDelegate {

    //MARK: - google sign in
    public func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
       
        if error != nil { return }
        
        guard let authentication = user.authentication else { return }
        
        let credential = GoogleAuthProvider.credential(withIDToken: authentication.idToken, accessToken: authentication.accessToken)
        
        Auth.auth().signIn(with: credential) { (result, error) in
            if error != nil { return }
            else {self.homeViewSegue()}
        }
    }
    
    //MARK: - alert func
    func showAlert(title:String,message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okBtn = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okBtn)
        self.present(alert, animated: true, completion: nil)
    }
    
    //MARK: - segue func
    func homeViewSegue(){
        let vc = storyboard?.instantiateViewController(identifier: Constants.homeVC) as! HomeVC
        view.window?.rootViewController = vc
        view.window?.makeKeyAndVisible()
    }
    
    func mainViewSegue(){
        let vc = storyboard?.instantiateViewController(identifier: Constants.mainVC) as! MainVC
        view.window?.rootViewController = vc
        view.window?.makeKeyAndVisible()
    }
    
    func phoneViewSegue(){
        let vc = storyboard?.instantiateViewController(identifier: Constants.phoneNumberVC) as! PhoneNumberVC
        view.window?.rootViewController = vc
        view.window?.makeKeyAndVisible()
    }
}


