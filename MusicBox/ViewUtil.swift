//
//  ViewUtil.swift
//  MusicBox
//
//  Created by 詹前力 on 2021/5/19.
//  View相关的工具类

import UIKit


class ViewUtil {
    
     /// 设置大圆角
    static func showLargeRadius(view: UIView) {
        view.layer.cornerRadius = SIZE_LARGE_RADIUS
        view.clipsToBounds = true
    }
}
