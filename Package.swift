// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Postal",
    products: [
        .library(
            name: "Postal",
            targets: ["Postal"]),
    ],
    dependencies: [
        .package(url: "../libetpan", from: "0.1.9"),
        .package(url: "https://github.com/antitypical/Result.git", from: "3.2.0")
    ],
    targets: [
        .target(
          name: "Postal",
          dependencies: ["libetpan", "Result"],
          path: "Postal",
          exclude: ["ReactiveSwift"]
        )
    ]
)
