// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "App",
    products: [
      .library(name: "DangerDeps", type: .dynamic, targets: ["App"])
    ],
    dependencies: [
        .package(url: "https://github.com/danger/swift.git", from: "3.12.3"),
        // Danger Plugins
        .package(url: "https://github.com/f-meloni/danger-swift-xcodesummary.git", from: "1.2.1")
    ],
    targets: [
        .target(
            name: "App",
            dependencies: [.product(name: "Danger", package: "swift")],
            path: "Sources/Danger",
            sources: ["Empty.swift"]
        )
    ]
)
