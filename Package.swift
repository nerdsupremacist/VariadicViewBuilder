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

        .library(
            name: "AnyViewReflection",
            targets: ["AnyViewReflection"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "VariadicViewBuilder", dependencies: ["AnyViewReflection"]),
        .target(name: "AnyViewReflection", dependencies: []),
        .testTarget(name: "VariadicViewBuilderTest", dependencies: ["VariadicViewBuilder"])
    ]
)
