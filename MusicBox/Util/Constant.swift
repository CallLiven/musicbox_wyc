//
//  Constant.swift
//  MusicBox
//
//  Created by 詹前力 on 2021/5/19.
//  常量文件
//  主要用来保存项目中用到的字符串，颜色，尺寸，网络请求地址

import UIKit


// MARK: - 尺寸

/// 立即体验按钮宽度
let SIZE_BUTTON_ENTER_WITH: CGFloat = 130.0
/// 立即体验按钮高度
let SIZE_BUTTON_ENTER_HEIGHT: CGFloat = 44.0

/// 大圆角
let SIZE_LARGE_RADIUS: CGFloat  = 22.0

/// 边框宽度
let SIZE_BORDER: CGFloat = 1


// MARK: - 颜色

/// 全局主色调
let COLOR_PRIMARY = 0x00B6B5




/// 手机号
/// 移动： 134 135 136 137 138 139 147 150 151 152 157 158 159 178 182 183 184 187 188 198
/// 联通： 130 131 132 145 155 156 166 171 175 176 185 186
/// 电信： 133 149 153 173 177 180 181 189 199
/// 虚拟运营商： 170
let REGX_PHONE = "^(0|86|17951)?(13[0-9]|15[0123456789]|16[6]|19[89]|17[01345678]|18[0-9]|14[579])[0-9]{8}$"
