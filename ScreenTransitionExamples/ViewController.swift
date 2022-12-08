//
//  ViewController.swift
//  ScreenTransitionExamples
//
//  Created by Songhee Yim on 12/6/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
  
    
    
    @IBAction func tapCodePresentButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePresentViewController") as? CodePushViewController else {return}
        viewController.modalPresentationStyle = .fullScreen
        viewController.name = "Gunter"
        self.present(viewController, animated: true, completion: nil)
        //새로운 화면 present
        //스토리보드에 있는 콘트롤러를 찾아서 instance화 해줘야한다
    }
    @IBAction func tapCodePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") as? CodePresentViewController else {return}
        viewController.modalPresentationStyle = .fullScreen
        viewController.name = "Gunter"
    self.navigationController?.pushViewController(viewController, animated: true)
        //버튼 후 네비게이션 스택에 새로운 화면 추가
        
    }
    
}

