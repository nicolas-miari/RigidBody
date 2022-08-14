// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RigidBody",
    platforms: [
      .iOS(.v15),
      .macOS(.v11)
    ],
    products: [
      .library(
          name: "RigidBody",
          targets: ["RigidBody"]),
    ],
    dependencies: [
      .package(url: "https://github.com/nicolas-miari/Component.git", from: "1.0.0"),
    ],
    targets: [
      .target(
        name: "RigidBody",
        dependencies: [
          .product(name: "Component", package: "Component"),
        ]),
      .testTarget(
        name: "RigidBodyTests",
        dependencies: ["RigidBody"]),
    ]
)
