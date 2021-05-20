//
//  StringExtend.swift
//  MusicBox
//
//  Created by 詹前力 on 2021/5/20.
//

import Foundation


extension String {
    
    /// 判断是否符合手机号格式
    ///
    /// - Returns: true false
    func isPhone() -> Bool {
        // 使用谓词
        let predicate = NSPredicate(format: "SELF MATCHES %@", REGX_PHONE)
        
        return predicate.evaluate(with: self)
    }
    
    
    /// 去除字符串首尾的空格和换行
    ///
    /// - Returns: 格式化后的字符串
    func trim() -> String? {
        let whitespace = NSCharacterSet.whitespacesAndNewlines
        return trimmingCharacters(in: whitespace)
    }
    
    
    /// 判断是否符合昵称规范（2~15位）
    ///
    /// - Returns: true false
    func isNickName() -> Bool {
        if count >= 2 && count <= 15 {
            return true
        }
        return false
    }
    
    
    /// 是否符合邮箱格式
    ///
    /// - Returns: true false
    func isEmail() -> Bool {
        let predicate = NSPredicate(format: "SELF MATCHES %@", REGX_EMAIL)
        return predicate.evaluate(with: self)
    }
    
    
    /// 是否符合字符串规范
    ///
    /// - Returns:
    func isPassword() -> Bool {
        if count >= 6 && count <= 15 {
            return true
        }
        return false
    }
    
}
