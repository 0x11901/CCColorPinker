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
        
        let x = UIView()
        let y = UIView()
        self.addSubview(x)
        self.addSubview(y)
        x.backgroundColor = UIColor.cyan
        y.backgroundColor = UIColor.cyan
        x.translatesAutoresizingMaskIntoConstraints = false
        y.translatesAutoresizingMaskIntoConstraints = false
        self.addConstraint(NSLayoutConstraint.init(item: x, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0))
        self.addConstraint(NSLayoutConstraint.init(item: x, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0))
        self.addConstraint(NSLayoutConstraint.init(item: x, attribute: .width, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 1, constant: 0))
        self.addConstraint(NSLayoutConstraint.init(item: x, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 1))
        self.addConstraint(NSLayoutConstraint.init(item: y, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0))
        self.addConstraint(NSLayoutConstraint.init(item: y, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0))
        self.addConstraint(NSLayoutConstraint.init(item: y, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 1, constant: 0))
        self.addConstraint(NSLayoutConstraint.init(item: y, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 1))
        
        let radius = UIScreen.main.bounds.size.width / 44
        let centerXY = UIScreen.main.bounds.size.width * 0.85 * 0.8 * 0.5
        // 暂时没有找到好的方法，只有愚蠢的计算frame
        
        /*
            一共十层
            第一层1个
            第二层12个
            第三层19个
            以后20个
        */
        let ratio: [CGFloat] = [1.0,0.4,0.58,0.69,0.79,0.89,0.99,1.1,1.2,1.3];
        for i in 0..<10 {
            for j in 0..<20 {
                if i == 0,j > 0 {
                    continue
                }else if i == 1,j > 11 {
                    continue
                }else if i == 2,j > 18 {
                    continue
                }
                let unit = CCColorUnit.init(radius: radius * ratio[i])
                unit.center = CGPoint.init(x: centerXY, y: centerXY)
                self.addSubview(unit)
                var x: CGFloat;
                var y: CGFloat;
                var angle: CGFloat;
                let distence: CGFloat = 1.75 * radius
                if i == 0 {
                    continue
                }else if i == 1 {
                    angle = CGFloat(Double.pi * 2 / 12) * CGFloat(j)
                }else if i == 2 {
                    angle = CGFloat(Double.pi * 2 / 19) * CGFloat(j) + CGFloat(Double.pi * 2 / 19) / 2
                }else{
                    angle = CGFloat(Double.pi * 2 / 20) * CGFloat(j) + (CGFloat(Double.pi * 2 / 20) / 2) * CGFloat((i + 1) % 2)
                }
                x = distence * CGFloat(i) * cos(angle)
                y = distence * CGFloat(i) * sin(angle)
                unit.transform = unit.transform.translatedBy(x: x, y: y)
            }
        }
        
    }
    
}
