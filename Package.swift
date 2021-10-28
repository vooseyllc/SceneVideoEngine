// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SceneVideoEngine",
	platforms: [
		.iOS(.v13),
		.macOS(.v10_15),
		.tvOS(.v13),
		.watchOS(.v5)
	],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SceneVideoEngine",
            targets: ["SceneVideoEngine"]),
    ],
    dependencies: [
		.package(url: "https://github.com/vooseyllc/VooseyBridge.git", .upToNextMajor(from: "1.2.1")),
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SceneVideoEngine",
            dependencies: [
				.product(name: "VooseyBridge", package: "VooseyBridge")
			]),
        .testTarget(
            name: "SceneVideoEngineTests",
            dependencies: ["SceneVideoEngine"]),
    ]
)
