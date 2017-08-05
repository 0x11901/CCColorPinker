//
//  ViewController.swift
//  CCColorPinker
//
//  Created by 王靖凯 on 2017/8/4.
//  Copyright © 2017年 王靖凯. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorVIew: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func modalColorPinker(_ sender: UIButton) {
        // 蒙板效果
        let blurView = UIToolbar.init(frame: self.view.bounds)
        blurView.barStyle = .blackTranslucent
        self.view.addSubview(blurView)
        // CCColorPinker
        let colorPinker = UIView();
        // #303D52
        colorPinker.backgroundColor = UIColor.colorWithHex(hex: 0x303D52)
        
        
        //布局
        let widthFix = 0.85
        let heightFix = 0.75
        self.view.addSubview(colorPinker)
        colorPinker.translatesAutoresizingMaskIntoConstraints = false
        self.view.addConstraint(NSLayoutConstraint.init(item: colorPinker, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint.init(item: colorPinker, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint.init(item: colorPinker, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: CGFloat(widthFix), constant: 0))
        self.view.addConstraint(NSLayoutConstraint.init(item: colorPinker, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: CGFloat(heightFix), constant: 0))
    }
}


