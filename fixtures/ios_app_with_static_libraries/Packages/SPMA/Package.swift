// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPMA",
    products: [
        .library(name: "SPMA", targets: ["SPMA"])
    ],
    targets: [
        .target(name: "SPMA", dependencies: []),
        .testTarget(name: "SPMATests", dependencies: ["SPMA"])
    ]
)
