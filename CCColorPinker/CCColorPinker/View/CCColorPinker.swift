//
//  CCColorPinker.swift
//  CCColorPinker
//
//  Created by 王靖凯 on 2017/8/5.
//  Copyright © 2017年 王靖凯. All rights reserved.
//

import UIKit

@objc protocol CCColorPinkerDelegete: NSObjectProtocol {
    @objc optional func colorPinker(_ colorPinker: CCColorPinker, didSelectedConfirmButton sender: UIButton)
    @objc optional func colorPinker(_ colorPinker: CCColorPinker, didSelectedCancelButton sender: UIButton)
}

class CCColorPinker: UIView {
    weak var delegete: CCColorPinkerDelegete?
    
    // 标题label
    fileprivate lazy var titleLabel: UILabel = {
        let label = UILabel(text: "选择颜色", fontSize: 24, color: UIColor.white)
        return label
    }()
    
    // 取消按钮
    fileprivate lazy var cancelButton: UIButton = {
        let btn = UIButton(title: "取消", fontSize: 20, color: UIColor.colorWithHex(hex: 0x429583),target:self, action: #selector(cancelButtonAction))
        return btn
    }()
    
    // 确认按钮
    fileprivate lazy var confirmButton: UIButton = {
        let btn = UIButton(title: "确认", fontSize: 20, color: UIColor.colorWithHex(hex: 0x429583), target: self, action: #selector(confrimButtonAction))
        return btn
    }()
    
    // 灰度滑动条
    fileprivate lazy var greySlider: UISlider = {
        let s = UISlider()
        s.value = 1.0
        return s
    }()
    
    // 透明度滑动条
    fileprivate lazy var alphaSlider: UISlider = {
        let s = UISlider()
        s.value = 1.0
        return s
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - UI相关
extension CCColorPinker {
    
    fileprivate func setupUI() {
        // 标题
        self.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addConstraint(NSLayoutConstraint.init(item: titleLabel, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1, constant: 20))
        self.addConstraint(NSLayoutConstraint.init(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: 20))
        
        // 按钮
        self.addSubview(cancelButton)
        cancelButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(confirmButton)
        confirmButton.translatesAutoresizingMaskIntoConstraints = false
        self.addConstraint(NSLayoutConstraint.init(item: confirmButton, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1, constant: -20))
        self.addConstraint(NSLayoutConstraint.init(item: confirmButton, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1, constant: -10))
        self.addConstraint(NSLayoutConstraint.init(item: cancelButton, attribute: .trailing, relatedBy: .equal, toItem: confirmButton, attribute: .leading, multiplier: 1, constant: -20))
        self.addConstraint(NSLayoutConstraint.init(item: cancelButton, attribute: .centerY, relatedBy: .equal, toItem: confirmButton, attribute: .centerY, multiplier: 1, constant: 0))
        
        // 滑条
        self.addSubview(greySlider)
        self.addSubview(alphaSlider)
        greySlider.translatesAutoresizingMaskIntoConstraints = false
        alphaSlider.translatesAutoresizingMaskIntoConstraints =  false
        self.addConstraint(NSLayoutConstraint.init(item: greySlider, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0))
        self.addConstraint(NSLayoutConstraint.init(item: greySlider, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1, constant: 20))
        self.addConstraint(NSLayoutConstraint.init(item: greySlider, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1, constant: -20))
        self.addConstraint(NSLayoutConstraint.init(item: greySlider, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1.4, constant: 0))
        
        self.addConstraint(NSLayoutConstraint.init(item: alphaSlider, attribute: .centerX, relatedBy: .equal, toItem: greySlider, attribute: .centerX, multiplier: 1, constant: 0))
        self.addConstraint(NSLayoutConstraint.init(item: alphaSlider, attribute: .leading, relatedBy: .equal, toItem: greySlider, attribute: .leading, multiplier: 1, constant: 0))
        self.addConstraint(NSLayoutConstraint.init(item: alphaSlider, attribute: .trailing, relatedBy: .equal, toItem: greySlider, attribute: .trailing, multiplier: 1, constant: 0))
        self.addConstraint(NSLayoutConstraint.init(item: alphaSlider, attribute: .top, relatedBy: .equal, toItem: greySlider, attribute: .bottom, multiplier: 1, constant: 20))
    }
    
}

// MARK: - 交互相关
extension CCColorPinker {
    
    @objc fileprivate func cancelButtonAction(sender: UIButton) {
        delegete?.colorPinker?(self, didSelectedCancelButton: sender)
    }
    
    @objc fileprivate func confrimButtonAction(sender: UIButton) {
        delegete?.colorPinker?(self, didSelectedConfirmButton: sender)
    }
    
}












