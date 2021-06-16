//
//  ViewController.swift
//  Scene-Trans02
//
//  Created by 이가람 on 2021/06/16.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func moveByNavi(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // 두번째 뷰 컨트롤러 인스턴스를 가져온다.
        let uvc = storyboard.instantiateViewController(withIdentifier: "secondVC")
        
        // 화면을 전환한다.
        self.navigationController?.pushViewController(uvc, animated: true)
    }
}

