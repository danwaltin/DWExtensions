// swift-tools-version:4.0
import PackageDescription

let package = Package(
	name: "DWExtensions",
	targets: [
		.target(name: "DWExtensions"),
		.testTarget(name: "DWExtensionsTests", dependencies: ["DWExtensions"])]
)

