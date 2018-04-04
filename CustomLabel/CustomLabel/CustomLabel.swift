//
//  CustomLabel.swift
//  CustomLabel
//
//  Created by osanai on 2018/04/04.
//  Copyright © 2018年 osanai. All rights reserved.
//

import UIKit

class CustomLabel: UILabel {
    
    override var text: String? {
        didSet {
            setup()
        }
    }

    func setup() {
        let attributedString = NSMutableAttributedString(string: self.text ?? "")
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 10
        attributedString.addAttribute(NSAttributedStringKey.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attributedString.length))
        self.attributedText = attributedString;
    }

}
