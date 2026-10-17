// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "Sleeve",
    platforms: [.macOS(.v14)],
    targets: [
        // Shared with Spindle (github.com/zaineldinbarakat-droid/spindle): the sync
        // channel the two apps talk over, and the self-updater.
        .target(
            name: "SpindleSync",
            path: "Sources/SpindleSync",
            swiftSettings: [.swiftLanguageMode(.v5)]
        ),
        // macOS 27's menu bar visibility restriction (private framework, resolved
        // at runtime). Objective-C so a changed API raises a catchable exception.
        .target(
            name: "MenuBarVisibility",
            path: "Sources/MenuBarVisibility"
        ),
        .executableTarget(
            name: "Sleeve",
            dependencies: ["SpindleSync", "MenuBarVisibility"],
            path: "Sources/Sleeve",
            swiftSettings: [.swiftLanguageMode(.v5)],
            linkerSettings: [.linkedFramework("Carbon"), .linkedFramework("IOKit")]
        )
    ]
)
