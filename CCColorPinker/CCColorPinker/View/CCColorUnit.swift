//
//  CCColorUnit.swift
//  CCColorPinker
//
//  Created by 王靖凯 on 2017/8/6.
//  Copyright © 2017年 王靖凯. All rights reserved.
//

import UIKit

class CCColorUnit: UIView {
    fileprivate var radius: CGFloat
    fileprivate var diameter: CGFloat
    init(radius: CGFloat) {
        self.radius = radius
        let diameter = radius * 2
        self.diameter = diameter
        let rect = CGRect.init(x: 0, y: 0, width: diameter, height: diameter)
        super.init(frame: rect)
        self.backgroundColor = UIColor.randomColor()
        self.layer.masksToBounds = true
        self.layer.cornerRadius = radius
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    override func draw(_ rect: CGRect) {
////        let size = CGSize.init(width: diameter, height: diameter)
//        let rect = CGRect.init(x: 0, y: 0, width: diameter, height: diameter)
//        let path = UIBezierPath.init(ovalIn: rect)
//        UIColor.randomColor().setFill()
//        path.fill()
//    }
    
}
