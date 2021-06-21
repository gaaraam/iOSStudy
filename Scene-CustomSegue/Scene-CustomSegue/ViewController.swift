//
//  ViewController.swift
//  Scene-CustomSegue
//
//  Created by 이가람 on 2021/06/16.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        if (segue.identifier=="custom_segue") {
            NSLog("\(segue.identifier!)가 실행됩니다.")
        
        } else if (segue.identifier=="action_segue") {
            NSLog("\(segue.identifier!)가 실행됩니다.")
        
        } else {
            NSLog("알 수 없는 세그입니다")
        }
    }


}

