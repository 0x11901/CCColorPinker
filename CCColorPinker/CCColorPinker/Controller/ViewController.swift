//
//  ViewController.swift
//  CCColorPinker
//
//  Created by 王靖凯 on 2017/8/4.
//  Copyright © 2017年 王靖凯. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var colorVIew: UIView!
    // 蒙板效果
    //    fileprivate lazy var blurView: UIToolbar = {
    //        let blurView = UIToolbar.init(frame: self.view.bounds)
    //        blurView.barStyle = .blackTranslucent
    //        return blurView
    //    }()
    fileprivate lazy var blurView: UIView = {
        let blurView = UIView(frame: self.view.bounds)
        blurView.backgroundColor = UIColor.black
        return blurView
    }()

    // 颜色选择器视图
    fileprivate lazy var colorPinker: CCColorPinker = {
        let colorPinker = CCColorPinker()
        return colorPinker
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func modalColorPinker(_: UIButton) {
        // 蒙板效果
        view.addSubview(blurView)

        // CCColorPinker
        colorPinker.delegete = self
        colorPinker.backgroundColor = UIColor.colorWithHex(hex: 0x303D52)

        // 布局
        let widthFix = 0.85
        let heightFix = 0.75
        view.addSubview(colorPinker)
        colorPinker.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraint(NSLayoutConstraint(item: colorPinker, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))
        view.addConstraint(NSLayoutConstraint(item: colorPinker, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0))
        view.addConstraint(NSLayoutConstraint(item: colorPinker, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: CGFloat(widthFix), constant: 0))
        view.addConstraint(NSLayoutConstraint(item: colorPinker, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: CGFloat(heightFix), constant: 0))
    }
}

// MARK: - CCColorPinkerDelegete

extension ViewController: CCColorPinkerDelegete {
    func colorPinker(_ colorPinker: CCColorPinker, didSelectedCancelButton _: UIButton) {
        colorPinker.removeFromSuperview()
        blurView.removeFromSuperview()
    }

    func colorPinker(_ colorPinker: CCColorPinker, didSelectedConfirmButton _: UIButton) {
        colorPinker.removeFromSuperview()
        blurView.removeFromSuperview()
    }
}
