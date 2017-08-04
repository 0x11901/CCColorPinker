//
//  Extension.swift
//  CCColorPinker
//
//  Created by 王靖凯 on 2017/8/5.
//  Copyright © 2017年 王靖凯. All rights reserved.
//

import UIKit

extension UIColor {
    public func colorWithHex(hex: Int) -> UIColor {
        let red: CGFloat = CGFloat((hex & 0xff0000) >> 16)
        let green: CGFloat = CGFloat((hex & 0xff00) >> 8)
        let blue: CGFloat = CGFloat(hex & 0xff)
        return UIColor.init(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
