//
//  Extentions.swift
//  AuthoApp
//
//  Created by admin on 25.12.2020.
//

import Foundation
import UIKit

extension UIViewController {
    
    
    //MARK: - alert func
    func showAlert(title:String,message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okBtn = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okBtn)
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
}
