//
//  FileUtilTest.swift
//  MusicBoxTests
//
//  Created by 詹前力 on 2021/5/20.
//

import XCTest

class FileUtilTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    
    func testFormatFileSize() {
        // 测试用例要尽快能的覆盖所有的情况，包括正确的和错误的
        XCTAssertEqual(FileUtil.formatFileSize(1), "1.00Byte")
        
        XCTAssertEqual(FileUtil.formatFileSize(1234), "1.21k")
        
        XCTAssertEqual(FileUtil.formatFileSize(1234), "1.20k")
    }
    
      

}
