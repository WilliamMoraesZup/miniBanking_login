//
//  LoginModule.swift
//  miniBanking_account
//
//  Created by Bruno Vieira on 23/10/21.
//

import UIKit

public final class LoginModule {
    
    public static func start(on navigationController: UINavigationController) {
        let storyboard = UIStoryboard(
            name: "Login",
            bundle: Bundle.init(for: self)
        )
        guard let initialViewController = storyboard.instantiateInitialViewController() as? LoginHomeViewController else { exit(0) }
        let loginService = LoginService()
        let businessHandler = LoginHomeViewModel(
            displayer: initialViewController,
            service: loginService
        )
        initialViewController.setup(businessHandler: businessHandler)
        navigationController.pushViewController(
            initialViewController,
            animated: true
        )
    }
    
}
