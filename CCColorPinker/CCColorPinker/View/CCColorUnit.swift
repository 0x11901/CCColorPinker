//
//  CCColorUnit.swift
//  CCColorPinker
//
//  Created by 王靖凯 on 2017/8/6.
//  Copyright © 2017年 王靖凯. All rights reserved.
//

import UIKit

class CCColorUnit: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.randomColor()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
