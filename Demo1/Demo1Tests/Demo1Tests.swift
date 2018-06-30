//
//  Demo1Tests.swift
//  Demo1Tests
//
//  Created by Soheil on 29/06/2018.
//  Copyright © 2018 Soheil Novinfard. All rights reserved.
//

import XCTest
@testable import Demo1

class Demo1Tests: XCTestCase {
	
	var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
		viewController = ViewController()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
	
	func test_NumberOfVowels_WhenPassedDominik_ReturnsThree() {
		let string = "Dominik"
		
		let numberOfVowels = viewController.numberOfVowels(in: string)
		
		XCTAssertEqual(numberOfVowels, 3, "should find 3 vowels in Dominik")
		
//		XCTAssertEqual(numberOfVowels, 4, "should find 4 vowels in Dominik", file:"Demo1Tests.swift", line: 36)
	}
	
	func test_MakeHeadline_ReturnsStringWithEachWordStartWithCapital() {
		let input = "this is a test headline"
		let expecedOutput = "This Is A Test Headline"
		
		let headline = viewController.makeHeadline(from: input)
		
		XCTAssertEqual(headline, expecedOutput)
	}
	
	func test_MakeHeadline_ReturnsStringWithEachWordStartWithCapital2() {
		let input = "this is another example"
		let expectedOutput = "This Is Another Example"
		
		let headline = viewController.makeHeadline(from: input)
		
		XCTAssertEqual(headline, expectedOutput)
	}
    
}
