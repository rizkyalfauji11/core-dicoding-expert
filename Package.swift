// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CorePackage",
    platforms: [
        .iOS(.v14),
        .macOS("99.0"),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CorePackage",
            targets: ["CorePackage"]),
    ],
    dependencies: [
        .package(name: "Alamofire", url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.4.0")),
        .package(name: "Realm", url: "https://github.com/realm/realm-cocoa", .upToNextMajor(from: "10.13.0"))
    ]
,
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CorePackage",
            dependencies: [
                .product(name: "RealmSwift", package: "Realm"),
                .product(name: "Alamofire", package: "Alamofire")
            ]),
        .testTarget(
            name: "CorePackageTests",
            dependencies: ["CorePackage"]),
    ]
)
