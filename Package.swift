// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Makoto",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/danger/swift.git", from: "1.5.6"),
        
        // Danger Plugins
        .package(url: "https://github.com/f-meloni/danger-swift-xcodesummary.git", from: "0.1.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(name: "DangerDependencies",
                dependencies: ["Danger", "DangerXCodeSummary"],
                path: "Sources/DangerDependencies"),
        .testTarget(name: "dangerTests",
                    dependencies: ["Danger", "DangerXCodeSummary"])
    ]
)
