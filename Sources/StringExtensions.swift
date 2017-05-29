import Foundation

internal let newLine = "\n"
internal let tripleWhitespace = "   "
internal let doubleWhitespace = "  "
internal let singleWhitespace = " "

public extension String {
	
	public func trim() -> String {
		return self.trimmingCharacters(in: NSCharacterSet.whitespaces)
	}
	
	public func appendLine() -> String {
		return self + newLine
	}
	
	public func appendLine(_ line: String) -> String {
		if self == "" {
			return self + line
		}
		return self + newLine + line
	}
	
	public func compactWhitespace() -> String {
		return _remove(tripleWhitespace)._remove(doubleWhitespace)
	}
	
	private func _remove(_ whitespace: String) -> String {
		if self.characters.count < whitespace.characters.count {
			return self
		}
		
		if !self.contains(whitespace) {
			return self
		}
		
		return self.replacingOccurrences(of: whitespace, with: singleWhitespace)
	}
	
	public func camelCaseify() -> String {
		let words = asNSString().components(separatedBy: NSCharacterSet.whitespaces)
		
		var output = ""
		for word in words {
			output += word.asNSString().capitalized
		}
		
		return output
	}
	
	public func allLines() -> [String] {
		if self == "" {
			return []
		}
		
		return self.asNSString().components(separatedBy: newLine)
	}
	
	public func deleteText(_ text: String) -> String {
		return self.asNSString().replacingOccurrences(of: text, with: "")
	}
}

extension String {
	func pathExtension() -> String {
		return asNSString().pathExtension
	}
	
	func stringByDeletingPathExtension() -> String {
		return asNSString().deletingPathExtension
	}
	
	func asNSString() -> NSString {
		return NSString(string: self)
	}
}
