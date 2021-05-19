//
//  AppDelegate.swift
//  MusicBox
//
//  Created by 詹前力 on 2021/5/18.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    /// 定义一个静态的计算属性，方便访问Appdelegate对象
    open class var shared: AppDelegate {
        UIApplication.shared.delegate as! AppDelegate
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = SplashController()
        window?.makeKeyAndVisible()
        return true
    }
    
    func toGuide() {
        /// 通过rootViewController的方式，是为了避免用户返回到上一级界面
        let gvc =  GuideController()
        window!.rootViewController = gvc
    }

}

