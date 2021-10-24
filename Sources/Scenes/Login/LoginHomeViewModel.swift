//
//  LoginHomeViewModel.swift
//  miniBanking_login
//
//  Created by Bruno Vieira on 23/10/21.
//

import Foundation

protocol LoginHomeBusinessHandlerProtocol: AnyObject {

    func login() -> Bool
    
}

final class LoginHomeViewModel: LoginHomeBusinessHandlerProtocol {
    
    private weak var displayer: LoginHomeDisplayerProtocol?
    
    func setup(displayer: LoginHomeDisplayerProtocol) {
        self.displayer = displayer
    }
    
    func login() -> Bool {
        return true
    }
    
}
