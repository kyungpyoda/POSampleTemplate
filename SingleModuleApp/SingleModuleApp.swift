import ProjectDescription

let nameAttribute: Template.Attribute = .required("name")
let projectPath = "."
let appPath = "./\(nameAttribute)"

let template = Template(
    description: "Single Module App Template",
    attributes: [
        nameAttribute,
    ],
    items: [
        .file(
            path: projectPath + "/Project.swift",
            templatePath: "AppProject.stencil"
        ),
        .file(
            path: projectPath + "/Tuist/Package.swift",
            templatePath: "Package.stencil"
        ),
        .file(
            path: appPath + "/Sources/AppDelegate.swift",
            templatePath: "AppDelegate.stencil"
        ),
        .file(
            path: appPath + "/Sources/SceneDelegate.swift",
            templatePath: "SceneDelegate.stencil"
        ),
        .file(
            path: appPath + "/Resources/LaunchScreen.storyboard",
            templatePath: "LaunchScreen+iOS.stencil"
        ),
        .directory(
            path: appPath + "/Resources",
            sourcePath: "Assets.xcassets"
        ),
        .file(
            path: ".gitignore",
            templatePath: "Gitignore.stencil"
        ),
        .file(
            path: ".mise.toml",
            templatePath: "mise.stencil"
        ),
        .string(
            path: "README.md",
            contents: "# \(nameAttribute)"
        ),
    ]
)