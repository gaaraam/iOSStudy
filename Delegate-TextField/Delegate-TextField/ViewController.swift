//
//  ViewController.swift
//  Delegate-TextField
//
//  Created by 이가람 on 2021/06/30.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var myTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        self.myTextField.keyboardType = UIKeyboardType.alphabet // 키보드타입 영문자 패드로
        self.myTextField.keyboardAppearance = UIKeyboardAppearance.dark // 키보드스타일 어둡게
        self.myTextField.returnKeyType = UIReturnKeyType.join // 리턴키타입은 "Join"
        self.myTextField.enablesReturnKeyAutomatically = true // 리턴키 자동 활성화 "On"
        
        self.myTextField.delegate = self
        
        
        
        
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("텍스트 편집이 시작됩니다.")
        return true
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("텍스트 필드의 내용이 삭제됩니다.")
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("텍스트 필드의 내용이 \(string)으로 변경됩니다.")
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("텍스트 필드의 리턴키가 눌러졌습니다.")
        return true
    }
   
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("텍스트 필드의 편집이 종료됩니다.")
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("텍스트 필드의 편집이 종료되었습니다.")
    }


}

