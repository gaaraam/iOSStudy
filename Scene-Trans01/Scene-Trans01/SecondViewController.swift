//
//  SecondViewController.swift
//  Scene-Trans01
//
//  Created by 이가람 on 2021/06/16.
//

import UIKit
class SecondViewController: UIViewController{
    
    @IBAction func back(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
