//
//  SplashController.swift
//  MusicBox
//
//  Created by 詹前力 on 2021/5/19.
//

import UIKit

class SplashController: UIViewController {
    /// 赖加载
    lazy var splashImage: UIImageView = {
        let imgView = UIImageView()
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        splashImage.image = UIImage(named: "SplashImage")
        view.addSubview(splashImage)
        
        DispatchQueue.main.asyncAfter(deadline: .now()+3) {
            self.next()
        }
    }
    
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        splashImage.frame = view.bounds
    }
    
    
    func next() {
        AppDelegate.shared.toGuide()
    }
}
