//
//  HomeVC.swift
//  AuthoApp
//
//  Created by admin on 24.12.2020.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func exmp(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "MainVC") as! MainVC
        
        view.window?.rootViewController = vc
        view.window?.makeKeyAndVisible()
        
    }
    
}
