//
//  ViewController.swift
//  CoordinatorTest
//
//  Created by Owen Henley on 30/10/2020.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }

    func instantiate() -> Self {
        return self
    }

}

