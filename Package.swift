// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CardDeck",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .watchOS(.v2),
        .tvOS(.v9)
    ],
    products: [
        .library(
            name: "CardDeck",
            targets: ["CardDeck"]),
    ],
    targets: [
        .target(
            name: "CardDeck",
            dependencies: []),
        .testTarget(
            name: "CardDeckTests",
            dependencies: ["CardDeck"]),
    ]
)
