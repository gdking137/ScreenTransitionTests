//
//  SeguePushViewController.swift
//  ScreenTransitionExamples
//
//  Created by Songhee Yim on 12/6/22.
//

import UIKit

class SeguePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func tapBackButton(_ sender: UIButton) {
        self.navigationController?
            .popViewController(animated: true)
    }
}
