//
//  GuideController.swift
//  MusicBox
//
//  Created by 詹前力 on 2021/5/19.
//  引导页

import UIKit

class GuideController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.init(hex: 0x00B6B5)
        view.backgroundColor = UIColor(named: "ColorPrimary")
    }

    override var prefersStatusBarHidden: Bool {
        return false
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
