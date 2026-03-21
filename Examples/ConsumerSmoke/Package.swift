// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "ConsumerSmoke",
    platforms: [
        .iOS(.v18),
        .macOS(.v15),
        .tvOS(.v18),
        .watchOS(.v11),
        .visionOS(.v2)
    ],
    dependencies: [
        .package(
            url: "https://github.com/InnoSquadCorp/InnoNetwork.git",
            branch: "codex/split-protobuf-package"
        ),
        .package(name: "InnoNetworkProtobuf", path: "../.."),
    ],
    targets: [
        .executableTarget(
            name: "ConsumerSmoke",
            dependencies: [
                .product(name: "InnoNetwork", package: "InnoNetwork"),
                .product(name: "InnoNetworkProtobuf", package: "InnoNetworkProtobuf"),
            ]
        )
    ]
)
