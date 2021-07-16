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
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.2.0"))
    ],
    targets: [
        .target(name: "RxAlertAction", dependencies: ["RxSwift", .product(name: "RxCocoa", package: "RxSwift")], path: "RxAlertAction")
    ]
)
