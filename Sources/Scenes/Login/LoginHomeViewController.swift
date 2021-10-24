//
//  LoginHomeViewController.swift
//  miniBanking_account
//
//  Created by Bruno Vieira on 23/10/21.
//

import UIKit
import miniBanking_core

protocol LoginHomeDisplayerProtocol: AnyObject {
    
}

final class LoginHomeViewController: ViewController,
                                     LoginHomeDisplayerProtocol {
    
    private var businessHandler: LoginHomeBusinessHandlerProtocol?
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    func setup(businessHandler: LoginHomeBusinessHandlerProtocol) {
        self.businessHandler = businessHandler
    }
    
    @IBAction func didTapLoginButton(_ sender: Any) {
        guard let businessHandler = businessHandler else { return }
        if businessHandler.login() {
            
        } else {
            
        }
    }
    
}
