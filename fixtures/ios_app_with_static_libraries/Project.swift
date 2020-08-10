import ProjectDescription

let project = Project(name: "iOSAppWithTransistiveStaticLibraries",
                      packages: [ .local(path: "Packages/SPMA") ],
                      targets: [
                          Target(name: "App",
                                 platform: .iOS,
                                 product: .app,
                                 bundleId: "io.tuist.App",
                                 infoPlist: "Info.plist",
                                 sources: "Sources/**",
                                 dependencies: [
                                     .project(target: "A", path: "Modules/A"),
                                     .package(product: "SPMA")
                          ]),
                          Target(name: "AppTests",
                                 platform: .iOS,
                                 product: .unitTests,
                                 bundleId: "io.tuist.AppTests",
                                 infoPlist: "Tests.plist",
                                 sources: "Tests/**",
                                 dependencies: [
                                     .target(name: "App"),
                          ]),
])
