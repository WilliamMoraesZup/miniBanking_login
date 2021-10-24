//
//  LoginRouter.swift
//  miniBanking_login
//
//  Created by Bruno Vieira on 23/10/21.
//

import UIKit
import miniBanking_home

struct LoginRouter {
    
    static func routeToHome(on navigationController: UINavigationController) {
        HomeModule.start(on: navigationController)
    }
    
}
