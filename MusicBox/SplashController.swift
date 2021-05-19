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
        
        /// 延时3秒执行
        DispatchQueue.main.asyncAfter(deadline: .now()+3) {
            self.next()
        }
    }
    
    /// 隐藏导航栏
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    /// 设置图片布局
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        splashImage.frame = view.bounds
    }
    
    /// 跳转到引导页
    func next() {
        AppDelegate.shared.toGuide()
    }
}
