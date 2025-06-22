// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftSpan",
    products: [
        .library(name: "SwiftSpan", targets: ["SwiftSpan"]),
    ],
    targets: [
        .target(name: "SwiftSpan"),
    ]
)
