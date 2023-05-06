// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "Source",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15),
    .tvOS(.v13),
    .watchOS(.v6),
  ],
  products: [
    .library(
      name: "ExampleFeature",
      targets: ["ExampleFeature"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/pointfreeco/swift-composable-architecture", from: "0.52.0"),
    .package(url: "https://github.com/tgrapperon/swift-dependencies-additions", from: "0.3.2"),
  ],
  targets: [
    .target(
      name: "ExampleFeature",
      dependencies: [
        .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
        .product(name: "DependenciesAdditions", package: "swift-dependencies-additions"),
      ]
    ),
    .testTarget(
      name: "ExampleFeatureTests",
      dependencies: ["ExampleFeature"]
    ),
  ]
)
