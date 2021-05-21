//
//  Service.swift
//  MusicBox
//
//  Created by 詹前力 on 2021/5/20.
//

import Foundation

/// 导入网络框架
import Moya


/// 定义网络中的所有接口
///
/// - sheetDetail ： 歌单详情
/// - sheets ： 歌单
///
enum Service {
    case sheetDetail(id: String)
    case sheets
}


// MARK: - 实现TargetType 协议
extension Service: TargetType {
    
    /// 返回网址
    var baseURL: URL {
        return URL(string: ENDPOINT)!
    }
    
    /// 请求的路径
    var path: String {
        switch self {
        case .sheets:
            return "/v1/sheets.json"
        case .sheetDetail(let id):
            return "/v1/sheets/\(id).json"
        }
    }
    
    /// 请求方式
    var method: Moya.Method {
        return .get
    }
    
    
    /// 测试请求数据
    var sampleData: Data {
        return Data()
    }
    
    /// 请求参数
    var task: Task {
        // 不传递参数
        return .requestPlain
    }
    
    /// 请求头
    var headers: [String : String]? {
        return nil
    }
    
    
}
 
