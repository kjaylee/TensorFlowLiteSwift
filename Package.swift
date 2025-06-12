// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteSwift",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "TensorFlowLiteSwift",
            targets: ["TensorFlowLite"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kjaylee/TensorFlowLiteC.git", from: "2.17.3"),
    ],
    targets: [
        .target(
            name: "TensorFlowLite",
            dependencies: ["TensorFlowLiteC"]),
    ]
)
