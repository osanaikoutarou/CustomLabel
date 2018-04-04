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
        label.backgroundColor = UIColor.yellow
        label.numberOfLines = 0
        label.font = UIFont(name: "HiraKakuProN-W3", size: 14)
        
        label.text = "あいうえおかきくけこさしすせそたちつてとなにぬねの"
        
        self.view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

