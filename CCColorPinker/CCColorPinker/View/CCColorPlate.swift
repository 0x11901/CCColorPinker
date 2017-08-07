//
//  CCColorPlate.swift
//  CCColorPinker
//
//  Created by 王靖凯 on 2017/8/6.
//  Copyright © 2017年 王靖凯. All rights reserved.
//

import UIKit

class CCColorPlate: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension CCColorPlate {
    
    fileprivate func setupUI() {
        self.backgroundColor = UIColor.clear
        let radius = UIScreen.main.bounds.size.width / 20
        let unit = CCColorUnit.init(radius: radius)
        layoutIfNeeded()
        
        unit.center = self.center
        self.addSubview(unit)
//        unit.transform.
        
        /*
            一共十层
            第一层1个
            第二层12个
            第三层19个
            以后20个
        */
        for i in 0..<10 {
            for j in 0..<20 {
//                print("\(i): \(j)")
            }
        }
        
    }
    
}
