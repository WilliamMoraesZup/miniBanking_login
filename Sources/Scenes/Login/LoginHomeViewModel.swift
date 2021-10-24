//
//  LoginHomeViewModel.swift
//  miniBanking_login
//
//  Created by Bruno Vieira on 23/10/21.
//

import Foundation
import miniBanking_networking

protocol LoginHomeBusinessHandlerProtocol: AnyObject {

    func login(
        username: String,
        password: String
    )
    
}

final class LoginHomeViewModel: LoginHomeBusinessHandlerProtocol {
    
    private weak var displayer: LoginHomeDisplayerProtocol?
    private let service: LoginServiceProtocol
    
    init(
        displayer: LoginHomeDisplayerProtocol,
        service: LoginServiceProtocol
    ) {
        self.displayer = displayer
        self.service = service
    }
    
    func login(
        username: String,
        password: String
    ) {
        service.login(
            username: username,
            password: password,
            completion: { [weak self] didSucceed in
                self?.displayer?.displayLogin(didSucceed: didSucceed)
            }
        )
    }
    
}
