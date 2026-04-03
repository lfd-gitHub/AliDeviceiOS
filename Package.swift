// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AliDeviceiOS",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "AliDeviceiOS",
            targets: ["AliDeviceiOS"]
        )
    ],
    targets: [
        .target(
            name: "AliDeviceiOS",
            dependencies: ["deviceiOS"],
            linkerSettings: [
                .linkedFramework("CFNetwork"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("Security"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("UIKit"),
                .linkedLibrary("c++"),
                .linkedLibrary("z")
            ]
        ),
        .binaryTarget(
            name: "deviceiOS",
            path: "Sources/deviceiOS.xcframework"
        )
    ]
)
