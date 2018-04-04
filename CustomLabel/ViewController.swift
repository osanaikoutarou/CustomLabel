//
//  ViewController.swift
//  CustomLabel
//
//  Created by osanai on 2018/04/04.
//  Copyright © 2018年 osanai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let label = CustomLabel.init(frame: CGRect(x: 100, y: 100, width: 100, height: 200))
        label.setup(15, hiragino: true, lineNum: 0, fontSize: 14)
        
        label.backgroundColor = UIColor.yellow
        
        label.text = "あいうえおかきくけこさしすせそたちつてとなにぬねの"
        
        self.view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

