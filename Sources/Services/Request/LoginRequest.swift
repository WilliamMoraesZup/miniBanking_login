//
//  LoginRequest.swift
//  miniBanking_login
//
//  Created by Bruno Vieira on 24/10/21.
//

import Foundation
import miniBanking_networking

struct LoginRequest: RequestProtocol {
    
    var endpoint: String = "miniBanking.mock/session/login"
    
    var method: HTTPMethod = .POST
    
    var body: [String : Any]? {
        [
            "username": username,
            "password": password
        ]
    }
    
    private let username: String
    private let password: String
    
    init(
        username: String,
        password: String
    ) {
        self.username = username
        self.password = password
    }
    
}
