//
//  ViewController.swift
//  IBTest
//
//  Created by 이가람 on 2021/06/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var uiTitle1: UILabel!
    @IBAction func clickBtn1(_ sender: Any) {
        self.uiTitle1.text = "1clicked"
    }
    
    
    @IBOutlet var uiTitle2: UILabel!
    @IBAction func clickBtn2(_ sender: Any) {
        self.uiTitle2.text = "2clicked"
    }
    
    @IBOutlet var uiTitle3: UILabel!
    @IBAction func clickBtn3(_ sender: Any) {
        self.uiTitle3.text = "3clicked"
        
    }
    
    @IBOutlet var uiTitle4: UILabel!
    @IBAction func clickBtn4(_ sender: Any){
        self.uiTitle4.text = "4clicked"
    }
    
    @IBOutlet var uiTitle5: UILabel!
    @IBAction func clickBtn5(_ sender: Any) {
        self.uiTitle5.text = "5clicked"
    }
}

