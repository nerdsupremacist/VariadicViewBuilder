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
    dependencies: [
        .package(url: "https://github.com/nerdsupremacist/AssociatedTypeRequirementsKit.git", from: "0.1.0")
    ],
    targets: [
        .target(name: "VariadicViewBuilder", dependencies: ["AssociatedTypeRequirementsKit"]),
        .testTarget(name: "VariadicViewBuilderTest", dependencies: ["VariadicViewBuilder"])
    ]
)
