//
//  MainTabBarController.swift
//  CoordinatorTest
//
//  Created by Owen Henley on 24/11/2020.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    let mainCoordinator = MainCoordinator(navigationController: UINavigationController())

    override func viewDidLoad() {
        super.viewDidLoad()
        mainCoordinator.start()
        viewControllers = [mainCoordinator.navigationController]
    }
}
