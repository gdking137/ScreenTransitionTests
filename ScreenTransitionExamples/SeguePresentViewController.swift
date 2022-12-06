//
//  SeguePresentViewController.swift
//  ScreenTransitionExamples
//
//  Created by Songhee Yim on 12/6/22.
//

import UIKit

class SeguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.presentingViewController?
            .dismiss(animated: true, completion:nil)
    }
    

}
