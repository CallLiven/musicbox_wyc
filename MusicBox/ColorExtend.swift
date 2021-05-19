//
//  ColorExtend.swift
//  MusicBox
//
//  Created by 詹前力 on 2021/5/19.
//

import UIKit

extension UIColor {
    public convenience init(hex: Int, alpha: CGFloat = 1.0){
        /// 从Int中，通过与运算取出对应的颜色
        /// 最高两位是红色
        /// 中间两位是绿色
        /// 最低两位是蓝色
        let red = (hex & 0xFF0000) >> 16
        let green = (hex & 0xFF00) >> 8
        let blue = (hex & 0xFF)
        
        /// 转为0~1
        let redFloat = CGFloat(red) / 255.0
        let greenFloat = CGFloat(green) / 255.0
        let blueFloat = CGFloat(blue) / 255.0
        
        /// 调用指定构造方法
        self.init(red: redFloat, green: greenFloat, blue: blueFloat, alpha: alpha)
    }
}


