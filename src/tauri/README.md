
# My Tauri (tauri)

A dev container configured for Tauri app development.



This dev container is intended to be used in a project with an existing [Tauri](https://v2.tauri.app/) app project.

To initialise a new project, before starting up the dev container follow [setup instructions on Tauri website](https://v2.tauri.app/start/create-project/#using-create-tauri-app). 

Then: 
1. Open project in VSCode.
2. From the command palette run `Dev Containers: Reopen in Container`
3. enter custom template id `ghcr.io/ohmnio/my-devcontainers/tauri`. 

The dev container will automatically run `npm install` and then launch the app in a new window. 

Alternatively, run the following command to intialise a new project and launch the devcontainer in VSCode. 
Note: you must have [installed the devcontainer cli from within VSCode, not from npm](https://code.visualstudio.com/docs/devcontainers/devcontainer-cli#_installation):

```bash 
sh <(curl -s https://raw.githubusercontent.com/ohmnio/my-devcontainers/main/src/tauri/setup-tauri.sh)
```

---

_Note: This file was auto-generated from the [devcontainer-template.json](https://github.com/ohmnio/my-devcontainers/blob/main/src/tauri/devcontainer-template.json).  Add additional notes to a `NOTES.md`._
