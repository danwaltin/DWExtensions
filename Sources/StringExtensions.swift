import Foundation

public extension String {
	public func camelCaseify() -> String {
		let words = asNSString().components(separatedBy: NSCharacterSet.whitespaces)
		
		var output = ""
		for word in words {
			output += word.asNSString().capitalized
		}
		
		return output
	}
}

extension String {
	func asNSString() -> NSString {
		return NSString(string: self)
	}
}
