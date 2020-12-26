//
//  CodeVC.swift
//  AuthoApp
//
//  Created by admin on 26.12.2020.
//

import UIKit

class CodeVC: UIViewController {

    @IBOutlet weak var codeTextField: UITextField!
    
    @IBOutlet weak var logInBTN: UIButton!
    @IBOutlet weak var backBTN: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInBTN.layer.cornerRadius = 6
        backBTN.layer.cornerRadius = 6
    }
    
    @IBAction func logInAct(_ sender: Any) {
        //write func to log in
        homeViewSegue()// inside func 
    }
    
    @IBAction func backAct(_ sender: Any) {
        phoneViewSegue()
    }
    
}
