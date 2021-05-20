//
//  StringExtend.swift
//  MusicBox
//
//  Created by 詹前力 on 2021/5/20.
//

import Foundation


extension String {
    func isPhone() -> Bool {
        let predicate = NSPredicate(format: "SELF MATCHES %@", REGX_PHONE)
        
        return predicate.evaluate(with: self)
    }
}
