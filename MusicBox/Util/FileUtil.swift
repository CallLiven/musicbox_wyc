//
//  FileUtil.swift
//  MusicBox
//
//  Created by 詹前力 on 2021/5/20.
//

import Foundation
  
class FileUtil {
    
    static func formatFileSize(_ data: Int) -> String {
        if data > 0 {
            let size = Double(data)
            
            let kiloByte = size / 1024
            if kiloByte < 1 && kiloByte > 0 {
                return String(format: "%.2fByte", size)
            }
            
            let megaByte = kiloByte / 1024
            if megaByte < 1 {
                return String(format: "%.2fk", kiloByte)
            }
            
            let gigaByte = megaByte / 1024
            if gigaByte < 1 {
                return String(format: "%.2fM", megaByte)
            }
            
            let teraByte = gigaByte / 1024
            if teraByte < 1 {
                return String(format: "%.2fG", gigaByte)
            }
            
            return String(format: "%.2fT", teraByte)
        }
        
        return "OK"
    }
}
