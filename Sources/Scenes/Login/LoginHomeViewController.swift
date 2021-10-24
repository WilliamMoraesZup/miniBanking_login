//
//  LoginHomeViewController.swift
//  miniBanking_account
//
//  Created by Bruno Vieira on 23/10/21.
//

import UIKit
import miniBanking_core

protocol LoginHomeDisplayerProtocol: AnyObject {

    func displayLogin(didSucceed: Bool)
    
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
        guard let username = usernameTextField.text,
              !username.isEmpty,
              let password = passwordTextField.text,
              !password.isEmpty
        else { return }
        businessHandler?.login(
            username: username,
            password: password
        )
    }
    
    func displayLogin(didSucceed: Bool) {
        guard let navigationController = navigationController else { return }
        if didSucceed {
            LoginRouter.routeToHome(on: navigationController)
        } else {
            // TODO
        }
    }
    
}

extension LoginHomeViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
