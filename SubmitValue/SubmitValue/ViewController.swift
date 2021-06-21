//
//  ViewController.swift
//  SubmitValue
//
//  Created by 이가람 on 2021/06/21.
//

import UIKit

class ViewController: UIViewController {

    // 이메일 주소 입력받는 텍스트필드
    @IBOutlet var email: UITextField!
    
    // 자동 갱신 여부를 설정하는 스위치
    @IBOutlet var isUpdate: UISwitch!
    
    // 갱신주기를 설정하는 스테퍼
    @IBOutlet var interval: UIStepper!
    
    // 자동갱신 여부를 표시하는 레이블
    @IBOutlet var isUpdateText: UILabel!
    
    // 갱신주기를 텍스트로 표시하는 레이블
    @IBOutlet var intervalText: UILabel!
    

    // 자동 갱신 여부가 바뀔 때마다 호출되는 메소드
    @IBAction func onSwitch(_ sender: UISwitch) {
        if(sender.isOn == true){
            self.isUpdateText.text = "갱신함"
        } else {
            self.isUpdateText.text = "갱신하지 않음"
        }
    }
    
    // 갱신주기가 바뀔 때마다 호출되는 메소드
    @IBAction func onStepper(_ sender: UIStepper) {
        let value = Int(sender.value)
        self.intervalText.text = "\(value)분 마다"
    }
    
    @IBAction func onSubmit(_ sender: Any) {
        
        // vc2의 인스턴스 생성
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "RVC") as? ResultViewController else {
            return
        }
        
        // 값 전달
        rvc.paramEmail = self.email.text!
        rvc.paramUpdate = self.isUpdate.isOn
        rvc.paramInterval = self.interval.value
        
        // 화면 이동
        self.navigationController?.pushViewController(rvc, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        // 목적지 뷰 컨트롤러 인스턴스 읽어오기
        let dest = segue.destination
        
        guard let rvc = dest as? ResultViewController else {
            return
        }
        
        rvc.paramEmail = self.email.text!
        rvc.paramUpdate = self.isUpdate.isOn
        rvc.paramInterval = self.interval.value
    }
   
    @IBAction func onPerformSegue(_ sender: Any) {
        self.performSegue(withIdentifier: "ManualSubmit", sender: self)
    }
}

