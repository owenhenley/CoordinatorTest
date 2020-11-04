//
//  BuyViewController.swift
//  CoordinatorTest
//
//  Created by Owen Henley on 04/11/2020.
//

import UIKit

class BuyViewController: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func instantiate() -> Self {
        return self
    }

}
