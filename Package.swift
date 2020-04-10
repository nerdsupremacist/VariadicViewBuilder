// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VariadicViewBuilder",
    platforms: [.iOS(.v13), .macOS(.v10_15)],
    products: [
        .library(
            name: "VariadicViewBuilder",
            targets: ["VariadicViewBuilder"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "VariadicViewBuilder",
            dependencies: []),
    ]
)
