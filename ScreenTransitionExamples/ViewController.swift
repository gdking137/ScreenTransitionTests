//
//  ViewController.swift
//  ScreenTransitionExamples
//
//  Created by Songhee Yim on 12/6/22.
//

import UIKit

class ViewController: UIViewController,SendDataDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
  
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBAction func tapCodePresentButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePresentViewController") as? CodePresentViewController else {return}
        viewController.modalPresentationStyle = .fullScreen
        viewController.name = "Gunter"
        viewController.delegate = self
        self.present(viewController, animated: true, completion: nil)
        //새로운 화면 present
        //스토리보드에 있는 콘트롤러를 찾아서 instance화 해줘야한다
    }
    @IBAction func tapCodePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") as? CodePushViewController else {return}
        viewController.modalPresentationStyle = .fullScreen
        viewController.name = "Gunter"
    self.navigationController?.pushViewController(viewController, animated: true)
        //버튼 후 네비게이션 스택에 새로운 화면 추가
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let viewcontroller = segue.destination as? SeguePushViewController{
            viewcontroller.name = "Gunter"
        }
        
    }
    
    
    func sendData(name: String) {
        self.nameLabel.text = name
        self.nameLabel.sizeToFit()
    }
}

