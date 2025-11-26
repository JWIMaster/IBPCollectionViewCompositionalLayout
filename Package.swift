// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "IBPCollectionViewCompositionalLayout",
    platforms: [.iOS("7.0")],
    products: [
        .library(
            name: "IBPCollectionViewCompositionalLayout",
            targets: ["IBPCollectionViewCompositionalLayout"]),
    ],
    dependencies: [
        .package(url: "https://github.com/JWIMaster/DiffableDataSources", .branch("master"))
    ],
    targets: [
        .target(
            name: "IBPCollectionViewCompositionalLayout",
            dependencies: ["DiffableDataSources"]),
        .testTarget(
            name: "IBPCollectionViewCompositionalLayoutTests",
            dependencies: ["IBPCollectionViewCompositionalLayout"]),
    ]
)
