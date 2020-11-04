//
//  Coordinator.swift
//  CoordinatorTest
//
//  Created by Owen Henley on 30/10/2020.
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start ()
}
