// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "InnoNetworkProtobuf",
    platforms: [
        .iOS(.v18),
        .macOS(.v15),
        .tvOS(.v18),
        .watchOS(.v11),
        .visionOS(.v2)
    ],
    products: [
        .library(
            name: "InnoNetworkProtobuf",
            targets: ["InnoNetworkProtobuf"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.35.0"),
        .package(
            url: "https://github.com/InnoSquadCorp/InnoNetwork.git",
            exact: "3.0.1"
        ),
    ],
    targets: [
        .target(
            name: "InnoNetworkProtobuf",
            dependencies: [
                .product(name: "InnoNetwork", package: "InnoNetwork"),
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
            ],
            path: "Sources/InnoNetworkProtobuf"
        ),
        .executableTarget(
            name: "InnoNetworkProtobufDocSmoke",
            dependencies: [
                .product(name: "InnoNetwork", package: "InnoNetwork"),
                "InnoNetworkProtobuf",
            ],
            path: "SmokeTests/InnoNetworkProtobufDocSmoke"
        ),
        .testTarget(
            name: "InnoNetworkProtobufTests",
            dependencies: [
                .product(name: "InnoNetwork", package: "InnoNetwork"),
                "InnoNetworkProtobuf",
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
            ],
            path: "Tests/InnoNetworkProtobufTests"
        ),
    ]
)
