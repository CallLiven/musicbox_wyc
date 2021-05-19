//
//  GuideController.swift
//  MusicBox
//
//  Created by 詹前力 on 2021/5/19.
//

import UIKit

class GuideController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
    }

    override var prefersStatusBarHidden: Bool {
        return false
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
