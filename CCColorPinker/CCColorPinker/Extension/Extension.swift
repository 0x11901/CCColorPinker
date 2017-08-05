//
//  Extension.swift
//  CCColorPinker
//
//  Created by 王靖凯 on 2017/8/5.
//  Copyright © 2017年 王靖凯. All rights reserved.
//

import UIKit

extension UIColor {
    class func colorWithHex(hex: Int) -> UIColor {
        let red: CGFloat = CGFloat((hex & 0xff0000) >> 16) / 255.0
        let green: CGFloat = CGFloat((hex & 0xff00) >> 8) / 255.0
        let blue: CGFloat = CGFloat(hex & 0xff) / 255.0
        return UIColor.init(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
