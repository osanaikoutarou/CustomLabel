//
//  CustomLabel.swift
//  CustomLabel
//
//  Created by osanai on 2018/04/04.
//  Copyright © 2018年 osanai. All rights reserved.
//

import UIKit

class CustomLabel: UILabel {

    var linespace:CGFloat = 0
    var hiragino:Bool = false
    var lineNum:Int = 0
    var fontSize:CGFloat = 12
    
    override var text: String? {
        didSet {
            create()
        }
    }
    
    func setup(_ linespace:CGFloat?, hiragino:Bool?, lineNum:Int?, fontSize:CGFloat?) {
        self.linespace = linespace ?? 0
        self.hiragino = hiragino ?? false
        self.lineNum = lineNum ?? 0
        self.fontSize = fontSize ?? 12.0
    }

    func create() {
        if self.hiragino {
            self.font = UIFont(name: "HiraginoSans-W3", size: self.fontSize)
        }
        else {
            self.font = UIFont(name: self.font.fontName, size: self.fontSize)
        }
        
        self.numberOfLines = self.lineNum
        
        let attributedString = NSMutableAttributedString(string: self.text ?? "")
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = self.linespace
        attributedString.addAttribute(NSAttributedStringKey.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attributedString.length))
        self.attributedText = attributedString;
    }

}
