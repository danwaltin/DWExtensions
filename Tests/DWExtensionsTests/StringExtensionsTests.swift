import XCTest
@testable import DWExtensions

class StringExtensionsTests: XCTestCase {
	// MARK:
	func test_camelCaseify() {
		XCTAssertEqual("",         "".camelCaseify())
		
		XCTAssertEqual("Word",     "word".camelCaseify())
		XCTAssertEqual("Word",     "Word".camelCaseify())
		XCTAssertEqual("Word",     "WORD".camelCaseify())
		
		XCTAssertEqual("OneTwo",      "one two".camelCaseify())
		XCTAssertEqual("OneTwoThree", "one two  three".camelCaseify())
	}
}
