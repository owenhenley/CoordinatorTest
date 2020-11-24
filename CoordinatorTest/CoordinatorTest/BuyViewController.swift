//
//  BuyViewController.swift
//  CoordinatorTest
//
//  Created by Owen Henley on 04/11/2020.
//

import UIKit

class BuyViewController: UIViewController, Storyboarded {
    
    weak var coordinator: BuyCoordinator?
    
    var selectedProduct = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        coordinator?.didFinishBuying()
    }
    
    func instantiate() -> Self {
        return self
    }

}
