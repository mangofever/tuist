import ProjectDescription

let project = Project(name: "App",
                      targets: [
                          Target(name: "App",
                                 platform: .iOS,
                                 product: .app,
                                 bundleId: "io.tuist.SignApp",
                                 infoPlist: "Info.plist",
                                 sources: "App/**",
                                 dependencies: []))
                        ]
)
