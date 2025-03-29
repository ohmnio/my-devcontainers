
# Tauri App Dev Container (tauri)

A dev container configured for Tauri app development.



Use this template to intialise a dev container for [Tauri](https://v2.tauri.app/) app development.

## Project Setup

To initialise a new project, before starting up the dev container follow [setup instructions on Tauri website](https://v2.tauri.app/start/create-project/#using-create-tauri-app). 

Then: 
1. Open project in VSCode.
2. From the command palette run `Dev Containers: Reopen in Container`
3. enter custom template id `ghcr.io/ohmnio/my-devcontainers/tauri`. 

Alternatively, run the following command to intialise a new project and launch the devcontainer in VSCode.

Note: you must have [installed the devcontainer cli from within VSCode, not from npm](https://code.visualstudio.com/docs/devcontainers/devcontainer-cli#_installation):

```bash 
sh <(curl -s https://raw.githubusercontent.com/ohmnio/my-devcontainers/main/src/tauri/create-tauri-project.sh)
```

## Debugging

Once in the dev container, use the included launch configuration (`F5`) to launch your app in debug mode. 

Note: Tauri can be used with many different frontend frameworks which each have their own dev servers which run in the background while the app is running. This means we cannot include the `problemMatcher` in the launch configuration since we can't assume which frontend framework will be used. This will result in a notice about problem matchers the first time launching the debugger. You can choose to `Debug Anyway` to continue but any problems emitted from the background dev server will not appear in the problems panel in VSCode. To fix this you can populate the `problemMatcher` config in the devcontainer.json to suit your frontend frameworks dev server.

---

_Note: This file was auto-generated from the [devcontainer-template.json](https://github.com/ohmnio/my-devcontainers/blob/main/src/tauri/devcontainer-template.json).  Add additional notes to a `NOTES.md`._
