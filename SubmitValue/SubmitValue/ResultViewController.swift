//
//  ResultViewController.swift
//  SubmitValue
//
//  Created by 이가람 on 2021/06/21.
//

import UIKit

class ResultViewController: UIViewController{
    
    @IBOutlet var resultEmail: UILabel! // 이메일
    @IBOutlet var resultUpdate: UILabel! // 자동갱신여부
    @IBOutlet var resultInterval: UILabel! // 갱신주기
    
    // 전달되는 값을 대입받을 프로퍼티 추가
    
    // 1. 이메일 값을 받을 변수
    var paramEmail: String = ""
    // 2. 업데이트 값을 받을 변수
    var paramUpdate: Bool = false
    // 3. 인터벌 값을 받을 변수
    var paramInterval: Double = 0
    
    override func viewDidLoad() {
        self.resultEmail.text = paramEmail
        self.resultUpdate.text = (self.paramUpdate == true ? "자동갱신" : "자동갱신안함")
        self.resultInterval.text = "\(Int(paramInterval))분마다 갱신"
        }

    @IBAction func onBack(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true)
    }
}

