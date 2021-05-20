//
//  PreferenceUtil.swift
//  MusicBox
//
//  Created by 詹前力 on 2021/5/20.
//

import Foundation

class PreferenceUtil {
    
    private static let KEY_GUIDE = ""
    
    /// 是否显示引导界面
    ///
    /// - Returns: true：要显示，false：不显示
//    static func isShowGuide() -> Bool {
//        return !UserDefaults.standard.bool(forKey: KEY_GUIDE)
//    }
    /// 写成一个计算属性与写成一个方法，本质是一样的
    /// 不够在获取这个值的时候，计算属性更方便直观
    static var isShowGuide: Bool {
        !UserDefaults.standard.bool(forKey: KEY_GUIDE)
    }
    
    
    /// 设置是否要显示引导页
    ///
    /// - Parameter data: true：不要显示，false：显示
    static func hideShowGuide(_ data: Bool) {
        UserDefaults.standard.setValue(data, forKeyPath: KEY_GUIDE)
        UserDefaults.standard.synchronize()
    }
}
