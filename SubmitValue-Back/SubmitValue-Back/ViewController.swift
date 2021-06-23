//
//  ViewController.swift
//  SubmitValue-Back
//
//  Created by 이가람 on 2021/06/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var resultEmail: UILabel!
    @IBOutlet var resultUpdate: UILabel!
    @IBOutlet var resultInterval: UILabel!
    
    // 값을 직접 전달받을 프로퍼티들
    var paramEmail: String?
    var paramUpdate: Bool?
    var paramInterval: Double?
    
    // 화면이 표시될 때마다 실행되는 메소드
    override func viewWillAppear(_ animated: Bool) {
        if let email = paramEmail {
            resultEmail.text = email
        }
        if let update = paramUpdate {
            resultUpdate.text = update == true ? "자동갱신" : "쟈동갱신안함"
        }
        if let interval = paramInterval {
            resultInterval.text = "\(Int(interval))분마다"
        }
    }
}

