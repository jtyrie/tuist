import ProjectDescription

let project = Project(
    name: "A",
    packages: [ .local(path: "../../packages/SPMA") ],
    targets: [
        .init(
            name: "A",
            platform: .iOS,
            product: .staticLibrary,
            bundleId: "io.tuist.A",
            infoPlist: .default,
            sources: "Sources/**",
            dependencies: [
                .project(target: "B", path: "../B"),
                .package(product: "SPMA")
            ],
            settings: Settings(base: ["HEADER_SEARCH_PATHS": "$(SRCROOT)/CustomHeaders"])
        ),
        .init(
            name: "ATests",
            platform: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.ATests",
            infoPlist: "Tests.plist",
            sources: "Tests/**",
            dependencies: [
                .target(name: "A"),
            ]
        ),
    ]
)
