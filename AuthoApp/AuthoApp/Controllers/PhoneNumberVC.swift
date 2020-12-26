//
//  PhoneVerificationVC.swift
//  AuthoApp
//
//  Created by admin on 26.12.2020.
//

import UIKit

class PhoneNumberVC: UIViewController {

    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    @IBOutlet weak var sendBTN: UIButton!
    @IBOutlet weak var signInWithBTN: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sendBTN.layer.cornerRadius = 6
        signInWithBTN.layer.cornerRadius = 6
    }

    @IBAction func sendAct(_ sender: Any) {
        // write send func
        let vc = storyboard?.instantiateViewController(identifier: Constants.codeVC) as! CodeVC
        view.window?.rootViewController = vc
        view.window?.makeKeyAndVisible()
    }
    
    @IBAction func signInWithAct(_ sender: Any) {
        mainViewSegue()
    }
}
