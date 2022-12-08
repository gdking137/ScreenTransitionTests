//
//  CodePresentViewController.swift
//  ScreenTransitionExamples
//
//  Created by Songhee Yim on 12/6/22.
//

import UIKit

protocol SendDataDelegate: AnyObject{
    func sendData(name: String)
}


class CodePresentViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    var name:String?
    weak var delegate: SendDataDelegate?
    //메모리 누수를 막기휘해 delegate 앞에 weak을 쓴다
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name{
            self.nameLabel.text = name
        }
      
    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.delegate?.sendData(name: "Gunter")
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
}
