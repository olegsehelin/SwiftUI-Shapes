// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUI-Shapes",
    platforms: [.iOS(.v13), .macOS(.v10_15), .watchOS(.v6), .tvOS(.v13)],
    products: [
        .library(
            name: "SwiftUI-Shapes",
            targets: ["Shapes"]),
    ],
    dependencies: [
        .package(url: "https://github.com/olegsehelin/CGExtender.git", .branch("master"))
    ],
    targets: [
        .target(
            name: "Shapes",
            dependencies: ["CGExtender"]),
        .testTarget(
            name: "ShapesTests",
            dependencies: ["Shapes"]),
    ]
)
