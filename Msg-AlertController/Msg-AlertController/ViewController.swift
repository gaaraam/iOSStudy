//
//  ViewController.swift
//  Msg-AlertController
//
//  Created by 이가람 on 2021/06/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var result: UILabel!
    
    override func viewDidLoad() {
        // 메시지 창을 처리하기 부적절한 위치(아직 뷰가 화면에 구현되기 전임)
    }
    override func viewDidAppear(_ animated: Bool){
        let alertTracking = UIAlertController(title: "다른 회사의 앱 및 웹사이트에 걸친 사용자의 활동을 추적하도록 허용하겠습니까?", message: "혜택 메뉴에서 사용자 맞춤 서비스 제공을 위해 필요합니다. 허용하지 않더라도 서비스를 이용할 수 있습니다.", preferredStyle: .alert)
        let ban = UIAlertAction(title: "앱에 추적 금지 요청", style: .default)
        let admit = UIAlertAction(title: "허용", style: .default)
        
        alertTracking.addAction(ban)
        alertTracking.addAction(admit)
        
        self.present(alertTracking, animated: false)
    }
    
        @IBAction func alert(_ sender: Any) {
       
        // 메세지창 객체 생성
        let alert = UIAlertController(title: "선택", message: "항목을 선택하세요.", preferredStyle: .alert)
        let cancel = UIAlertAction(title: "취소", style: .cancel){(_) in
            self.result.text = "취소버튼을 클릭했습니다."
        }
        let ok = UIAlertAction(title: "확인", style: .default){(_) in
            self.result.text = "확인버튼을 클릭했습니다."
        }
        let exec = UIAlertAction(title: "실행", style: .destructive){(_) in
            self.result.text = "실행버튼을 클릭했습니다."
        }
        let stop = UIAlertAction(title: "중지", style: .default){(_) in
            self.result.text = "중지버튼을 클릭했습니다."
        }
        
        // 버튼을 컨트롤러에 등록
        alert.addAction(cancel)
        alert.addAction(ok)
        alert.addAction(exec)
        alert.addAction(stop)
        
        // 메시지창 실행
        self.present(alert, animated: false)
    }
    
    @IBAction func login(_ sender: Any) {
        let title = "스토어에 로그인"
        let message = "사용자 이메일의 암호를 입력하시오."
        let alertLogin = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        let ok = UIAlertAction(title: "확인", style: .default){ (_) in
            // 확인 버튼을 클릭했을 때 처리할 내용
            if let tf = alertLogin.textFields?[0] {
                print("입력된 값은 \( tf.text! )입니다.")
            } else {
                print("입력된 값이 없습니다.")
            }
        }
        
        alertLogin.addAction(cancel)
        alertLogin.addAction(ok)
        
        alertLogin.addTextField(configurationHandler: {(tf) in
            // 텍스트필드의 속성설정
            tf.placeholder = "암호"
            tf.isSecureTextEntry = true
        })
        
        self.present(alertLogin, animated: false)
    }
    
    @IBAction func auth(_ sender: Any) {
        // 메시지 창 관련 객체 정의
        let msg = "로그인"
        let alert = UIAlertController(title: nil, message: msg, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        let ok = UIAlertAction(title: "확인", style: .default) {
            ( _ ) in
            // 확인 버튼을 눌렀을 때에 실행할 내용
        }
        
        // 정의된 액션 버튼 객체를 메시지창에 추가
        alert.addAction(cancel)
        alert.addAction(ok)
        
        // 아이디 필드 추가
        alert.addTextField(configurationHandler: {(tf) in
                tf.placeholder = "아이디" // 미리 보여줄 안내 메시지
            tf.isSecureTextEntry = false // 입력시 별표처리 안함
        })
        
        alert.addTextField(configurationHandler: { (tf) in
            tf.placeholder = "비밀번호" // 미리 보여줄 안내 메시지
            tf.isSecureTextEntry = true // 입력시 별표처리함
        })
        
        self.present(alert, animated: false)
    }
    
}


