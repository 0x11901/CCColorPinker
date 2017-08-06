//
//  CCColorUnit.swift
//  CCColorPinker
//
//  Created by 王靖凯 on 2017/8/6.
//  Copyright © 2017年 王靖凯. All rights reserved.
//

import UIKit

class CCColorUnit: UIView {

    init(radius: CGFloat) {
        let diameter = radius * 2
        let rect = CGRect.init(x: 0, y: 0, width: diameter, height: diameter)
        super.init(frame: rect)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        
    }
    
}
