#!/bin/bash

# Prompt the user for the project path
read -p "Enter path to create the new project [eg ./myproject]: " PROJECT_PATH
# Check if the user entered a project path
if [ -z "$PROJECT_PATH" ]; then
  echo "Project path is required. Usage: $0 <project-path>"
  exit 1
fi

# scaffold project, this will create project directory
npm create tauri-app@latest "$PROJECT_PATH"
# Check if the previous command was successful
if [ $? -ne 0 ]; then
  echo "Error: Tauri project creation did not complete successfully. Exiting dev container start up."
  exit 1
fi

# Move into the project directory
pushd "$PROJECT_PATH"

# Install devcontainer into project
devcontainer templates apply -t ghcr.io/ohmnio/my-devcontainers/tauri
# open VSCode with project loaded in devcontainer
devcontainer open

# return to orginial directory
popd