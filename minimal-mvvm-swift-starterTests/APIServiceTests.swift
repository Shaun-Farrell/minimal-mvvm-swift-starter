//
//  APIServiceTests.swift
//  minimal-mvvm-swift-starterTests
//
//  Created by Shaun Farrell on 12/02/2018.
//

import XCTest
@testable import minimal_mvvm_swift_starter

class APIServiceTests: XCTestCase {
    
    var sut: APIService?
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = APIService()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
        super.tearDown()
    }

    func test_fetchResults() {
        
        // Apiservice under test
        let sut = self.sut!
        
        let expect = XCTestExpectation(description: "Callback")
        var returnedResults = [Result]()
        
        sut.fetchResults(complete: { (success, results) in
            returnedResults = results
            expect.fulfill()
        })
        
        wait(for: [expect], timeout: 3)
        XCTAssertEqual(returnedResults.count, 1)
    }
    
}
