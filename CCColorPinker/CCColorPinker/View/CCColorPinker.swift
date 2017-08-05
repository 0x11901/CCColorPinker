//
//  CCColorPinker.swift
//  CCColorPinker
//
//  Created by 王靖凯 on 2017/8/5.
//  Copyright © 2017年 王靖凯. All rights reserved.
//

import UIKit

class CCColorPinker: UIView {
    fileprivate lazy var titleLabel: UILabel = {
        let label = UILabel(text: "选择颜色", fontSize: 24, color: UIColor.white)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension CCColorPinker {
    
    fileprivate func setupUI() {
        self.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addConstraint(NSLayoutConstraint.init(item: titleLabel, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1, constant: 20))
        self.addConstraint(NSLayoutConstraint.init(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: 20))
    }
    
}












