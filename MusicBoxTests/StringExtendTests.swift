//
//  StringExtendTests.swift
//  MusicBoxTests
//
//  Created by 詹前力 on 2021/5/20.
//

import XCTest

class StringExtendTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        // 每此调用测试方法之前，调用此方法
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        // 每次调用测试方法之后，调用此方法
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    /// 测试手机号
    func testIsPhone() {
        /// assert 代表只有结果为true 才测试通过
        assert("13411373864".isPhone())
    }
    
    

}
