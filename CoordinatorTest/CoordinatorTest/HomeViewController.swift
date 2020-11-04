//
//  HomeViewController.swift
//  CoordinatorTest
//
//  Created by Owen Henley on 30/10/2020.
//

import UIKit

class HomeViewController: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }

    func instantiate() -> Self {
        return self
    }

    // MARK: - Actions
    
    @IBAction func buyTapped(_ sender: Any) {
        coordinator?.buySubscription()
    }
    
    @IBAction func createAccountTapped(_ sender: Any) {
        coordinator?.createAccount()
    }
}

