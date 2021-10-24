//
//  LoginServices.swift
//  miniBanking_mock
//
//  Created by Bruno Vieira on 23/10/21.
//

import Foundation
import miniBanking_networking

protocol LoginServiceProtocol {
    
    func login(
        username: String,
        password: String,
        completion: @escaping (Bool) -> Void
    )
    
}

struct LoginService: LoginServiceProtocol {
    
    private let dispatcher: NetworkDispatcherProtocol
    
    init(dispatcher: NetworkDispatcherProtocol = NetworkDispatcher()) {
        self.dispatcher = dispatcher
    }
    
    func login(
        username: String,
        password: String,
        completion: @escaping (Bool) -> Void
    ) {
        let request = LoginRequest(
            username: username,
            password: password
        )
        dispatcher.requestObject(
            of: LoginResponse.self,
            request: request,
            completion: { result in
                switch result {
                case .success(let response):
                    if let didSucceed = response.didSucceed {
                        completion(didSucceed)
                    } else {
                        completion(false)
                    }
                case .failure:
                    completion(false)
                }                
            }
        )
    }
    
}
