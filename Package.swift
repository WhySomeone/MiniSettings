// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MiniSettings",
    platforms: [
          .iOS(.v14)
       ],
    products: [
        .library(
            name: "MiniSettings",
            targets: ["MiniSettings"]),
    ],
    targets: [
        .target(
            name: "MiniSettings"),
    ]
)
