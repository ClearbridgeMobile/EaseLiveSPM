// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EaseLive",
    platforms: [
        .iOS(.v12),
        .tvOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "EaseLiveSPM",
            targets: ["EaseLiveSPM"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "EaseLiveSPM", path: "./Sources/EaseLiveSPM/EaseLiveSDK.xcframework"),
    ]
)
