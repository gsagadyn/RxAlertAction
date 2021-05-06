// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "RxAlertAction",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "RxAlertAction", targets: ["RxAlertAction"])
    ],
    targets: [
        .target(name: "RxAlertAction", dependencies: [], path: "RxAlertAction", resources: [])
    ]
)
