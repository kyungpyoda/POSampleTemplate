import ProjectDescription

let nameAttribute: Template.Attribute = .required("name")
let projectPath = "."
let appPath = "./\(nameAttribute)"

let template = Template(
    description: "Single Module App for SwiftUI Template",
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
            path: appPath + "/Sources/\(nameAttribute)App.swift",
            templatePath: "App.stencil"
        ),
        .file(
            path: appPath + "/Sources/ContentView.swift",
            templatePath: "ContentView.stencil"
        ),
        .directory(
            path: appPath + "/Resources",
            sourcePath: "Assets.xcassets"
        ),
        .directory(
            path: appPath + "/Resources",
            sourcePath: "Preview Content"
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