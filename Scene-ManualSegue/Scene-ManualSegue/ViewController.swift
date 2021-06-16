//
//  ViewController.swift
//  Scene-ManualSegue
//
//  Created by 이가람 on 2021/06/16.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func wind(_ sender: Any) {
        
        self.performSegue(withIdentifier: "ManualWind", sender: self)
    }
    
}

