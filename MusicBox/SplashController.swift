//
//  SplashController.swift
//  MusicBox
//
//  Created by 詹前力 on 2021/5/19.
//  启动页

import UIKit
import Moya

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
        // 测试网络框架
        let provider =  MoyaProvider<Service>()
        
        provider.request(.sheetDetail(id: "1")) { (result) in
            // result 类型是 Result<Response,MoyaError>
            switch result {
            case let .success(response):
                // 请求成功
                let data = response.data
                let code = response.statusCode
                
                let dataString = String(data: data, encoding: .utf8)
                
                print("Request success data: \(String(describing: dataString)), code: \(code)")
            case let .failure(error):
                // 请求失败
                print("Request failure : \(error)")
                
                let error = error as! MoyaError
                
                switch error {
                case .imageMapping(let response):
                    print("图片解析错误")
                    print(response)
                case .jsonMapping(let response):
                    print("JSON解析错误")
                    print(response)
                case .statusCode(let response):
                    print("状态错误")
                    print(response)
                case .stringMapping(let response):
                    print("字符串映射错误")
                    print(response)
                case .underlying(let nsError as NSError, let response):
                    print("这里将错误转为NSERROR")
                    print("Code: \(nsError.code)")
                    print("domain: \(nsError.domain)")
                    print("response: \(String(describing: response))")
                    switch nsError.code {
                    case NSURLErrorNotConnectedToInternet:
                        print("网络好像不好，请稍后再试！")
                    case NSURLErrorTimedOut:
                        print("连接超时，请稍后再试！")
                    default:
                        print("未知错误，请稍后再试")
                    }
                case .requestMapping(_):
                    print("请求映射错误")
                case .objectMapping(let error, let response):
                    print("对象解析错误")
                    print(response)
                    print(error)
                case .encodableMapping(let error):
                    print("对象编码错误")
                    print(error)
                case .parameterEncoding(let error):
                    print("参数编码错误")
                    print(error)
                }
            }
        }
        
        
        if PreferenceUtil.isShowGuide {
            AppDelegate.shared.toGuide()
        }else{
            AppDelegate.shared.toHome()
        }
        
    }
}
