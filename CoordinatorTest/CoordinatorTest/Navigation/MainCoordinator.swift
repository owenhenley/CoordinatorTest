//
//  MainCoordinator.swift
//  CoordinatorTest
//
//  Created by Owen Henley on 02/11/2020.
//

import UIKit

class MainCoordinator: NSObject, Coordinator, Buying, AccountCreating, UINavigationControllerDelegate {
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = HomeViewController.instantiate()
        vc.coordinator = self
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        navigationController.delegate = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func buySubscription() {
        let child = BuyCoordinator(navigationController: navigationController)
        child.parentCoordinator = self
        
        childCoordinators.append(child)
        child.start()
    }

//    func buySubscription(to productType: Int) {
//        let vc = BuyViewController.instantiate()
//        vc.selectedProduct = productType
//        vc.coordinator = self
//        navigationController.pushViewController(vc, animated: true)
//    }
    
    func createAccount() {
        let vc = CreateAccountViewController.instantiate()
        vc.coordinator = self
//        vc.createAccountAction = { [weak self] in
//            self?.createAccount()
//        }
        navigationController.pushViewController(vc, animated: true)
    }
    
    func childDidFinish(_ child: Coordinator?) {
        for (index, coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        guard let fromViewController = navigationController.transitionCoordinator?.viewController(forKey: .from) else {
            return
        }
        
        if navigationController.viewControllers.contains(fromViewController) {
            return
        }

        if let buyViewController = fromViewController as? BuyViewController {
            childDidFinish(buyViewController.coordinator)
        }
    }
}
