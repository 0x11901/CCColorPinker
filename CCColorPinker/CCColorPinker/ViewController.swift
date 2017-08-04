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
        //蒙板效果
        let blurView = UIToolbar.init(frame: self.view.bounds)
        blurView.barStyle = .blackTranslucent
        self.view.addSubview(blurView)
        
    }
    
}

