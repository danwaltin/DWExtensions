import XCTest
@testable import DWExtensions

class StringExtensionsTests: XCTestCase {
	func test_trim() {
		XCTAssertEqual(     "".trim(),  "")
		XCTAssertEqual("line".trim(),   "line")
		XCTAssertEqual("line ".trim(),  "line")
		XCTAssertEqual(" line".trim(),  "line")
		XCTAssertEqual(" line".trim(),  "line")
		XCTAssertEqual(" line ".trim(), "line")
	}
	
	func test_appendLine() {
		XCTAssertEqual(""    .appendLine(""),     "")
		XCTAssertEqual(""    .appendLine("line"), "line")
		XCTAssertEqual("one" .appendLine("two"),  "one\ntwo")
		XCTAssertEqual("line".appendLine(),       "line\n")
	}
	
	func test_compactWhitespace() {
		XCTAssertEqual(""         .compactWhitespace(), "")
		XCTAssertEqual("  "       .compactWhitespace(), " ")
		XCTAssertEqual("   "      .compactWhitespace(), " ")
		XCTAssertEqual("one  "    .compactWhitespace(), "one ")
		XCTAssertEqual("one two"  .compactWhitespace(), "one two")
		XCTAssertEqual("one  two" .compactWhitespace(), "one two")
		XCTAssertEqual("one   two".compactWhitespace(), "one two")
		XCTAssertEqual("1  2   3" .compactWhitespace(), "1 2 3")
	}
	
	func test_camelCaseify() {
		XCTAssertEqual(""              .camelCaseify(), "")
		
		XCTAssertEqual("word"          .camelCaseify(), "Word")
		XCTAssertEqual("Word"          .camelCaseify(), "Word")
		XCTAssertEqual("WORD"          .camelCaseify(), "Word")
		
		XCTAssertEqual("one two"       .camelCaseify(), "OneTwo")
		XCTAssertEqual("one two  three".camelCaseify(), "OneTwoThree")
	}
	
	func test_deleteText() {
		XCTAssertEqual("Feature:title".deleteText("Feature:"), "title")
	}
	
	func test_allLines() {
		XCTAssertEqual(""        .allLines(), [])
		XCTAssertEqual(" "       .allLines(), [" "])
		XCTAssertEqual("line"    .allLines(), ["line"])
		XCTAssertEqual("one two" .allLines(), ["one two"])
		XCTAssertEqual("one\ntwo".allLines(), ["one", "two"])
		XCTAssertEqual("1\n2\n3" .allLines(), ["1", "2", "3"])
		XCTAssertEqual("\nline"  .allLines(), ["", "line"])
		XCTAssertEqual("line\n"  .allLines(), ["line", ""])
	}
}
