# POSampleTemplate
tuist scaffold templates

## Guide
- Copy each template folder into the tuist's template path.  
  - tuist's template path: `~/.local/share/mise/installs/tuist/{Your Version}/bin/Templates/`  
    - This path is for those using [Mise](https://docs.tuist.io/guide/introduction/installation#recommended-mise).
- Use one of these templates in your project directory.
  - `tuist scaffold SingleModuleApp --name MySampleApp`
- Generate.
  - `tuist generate`

## Templates
- SingleModuleApp
  <details>
    <summary>Details...</summary>

    ```
    YourProjectDirectory
      - .gitignore
      - .mise.toml
      - README.md
      - Tuist
        - Package.swift
      - MySampleApp
        - Resources
          - Assets.xcassets
          - LaunchScreen.storyboard
        - Sources
          - AppDelegate.swift
          - SceneDelgate.swift
    ```
  </details>
- SingleModuleApp2
  <details>
    <summary>Details...</summary>

    ```
    YourProjectDirectory
      - .gitignore
      - .mise.toml
      - README.md
      - Tuist
        - Package.swift
      - MySampleApp
        - Resources
          - Assets.xcassets
          - Preview Content
            - Preview Asset.xcassets
        - Sources
          - MySampleApp.swift
          - ContentView.swift
    ```
  </details>
- _WIP... ⏳_
