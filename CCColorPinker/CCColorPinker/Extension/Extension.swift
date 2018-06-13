//
//  Extension.swift
//  CCColorPinker
//
//  Created by 王靖凯 on 2017/8/5.
//  Copyright © 2017年 王靖凯. All rights reserved.
//

import UIKit

extension UIColor {
    class func colorWithHex(hex: UInt32) -> UIColor {
        let red: CGFloat = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        let green: CGFloat = CGFloat((hex & 0xFF00) >> 8) / 255.0
        let blue: CGFloat = CGFloat(hex & 0xFF) / 255.0
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }

    class func randomColor() -> UIColor {
        return UIColor(red: CGFloat(Double(arc4random_uniform(256)) / 255.0), green: CGFloat(Double(arc4random_uniform(256)) / 255.0), blue: CGFloat(Double(arc4random_uniform(256)) / 255.0), alpha: 1.0)
    }
}

extension UILabel {
    convenience init(text: String? = nil, fontSize: CGFloat? = nil, color: UIColor? = nil) {
        self.init()
        self.text = text
        if let fontSize = fontSize {
            font = UIFont.systemFont(ofSize: fontSize)
        }
        if let color = color {
            textColor = color
        }
    }
}

extension UIButton {
    convenience init(title: String? = nil, fontSize: CGFloat? = nil, color: UIColor? = nil, highlightedColor: UIColor? = nil, target: Any? = nil, action: Selector? = nil, event: UIControlEvents = .touchUpInside) {
        self.init()
        setTitle(title, for: .normal)
        if let fontSize = fontSize {
            titleLabel?.font = UIFont.systemFont(ofSize: fontSize)
        }
        if let color = color {
            setTitleColor(color, for: .normal)
        }
        if let highlightedColor = highlightedColor {
            setTitleColor(highlightedColor, for: .highlighted)
        }
        if let target = target, let action = action {
            addTarget(target, action: action, for: event)
        }
    }
}
