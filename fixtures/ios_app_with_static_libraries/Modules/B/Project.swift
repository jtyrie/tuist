import ProjectDescription

let project = Project(name: "B",
                      packages: [ .local(path: "../packages/SPMA") ],
                      targets: [
                          Target(name: "B",
                                 platform: .iOS,
                                 product: .staticLibrary,
                                 bundleId: "io.tuist.B",
                                 infoPlist: "Info.plist",
                                 sources: "Sources/**",
                                 dependencies: [
                            .package(product: "SPMA")
                          ]),
                          Target(name: "BTests",
                                 platform: .iOS,
                                 product: .unitTests,
                                 bundleId: "io.tuist.BTests",
                                 infoPlist: "Tests.plist",
                                 sources: "Tests/**",
                                 dependencies: [
                                     .target(name: "B"),
                          ]),
])
