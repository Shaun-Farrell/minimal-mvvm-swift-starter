//
//  ResultViewModelTests.swift
//  minimal-mvvm-swift-starterTests
//
//  Created by Shaun Farrell on 12/02/2018.
//

import XCTest
@testable import minimal_mvvm_swift_starter

class ResultViewModelTests: XCTestCase {
    
    var sut: ResultViewModel!
    var mockApi: MockApiService!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        mockApi = MockApiService()
        sut = ResultViewModel(apiService: mockApi)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
        mockApi = nil
        super.tearDown()
    }
    
    
    func test_fetchResultsIsCalled() {
        // Given
        mockApi.resultList = [Result]()
        
        // When
        sut.initFetch()
        
        // Assert
        XCTAssert(mockApi!.isFetchCalled)
    }

}

class MockApiService: APIServiceProtocol {
    
    var resultList: [Result] = [Result]()
    var completeClosure: ((Bool, [Result]) -> ())!
    var isFetchCalled = false
    
    func fetchResults(complete: @escaping (Bool, [Result]) -> ()) {
        isFetchCalled = true
        completeClosure = complete
    }
    
    func fetchSuccess() {
        completeClosure( true, resultList )
    }
    
}
