//
//  CodePresentViewController.swift
//  ScreenTransitionExamples
//
//  Created by Songhee Yim on 12/6/22.
//

import UIKit

class CodePresentViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    var name:String?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name{
            self.nameLabel.text = name
        }
      
    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
}
