# Use the base image
FROM mcr.microsoft.com/devcontainers/base:latest

# Install Tauri dependencies
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y --no-install-recommends \
        libwebkit2gtk-4.1-dev \
        build-essential \
        curl \
        wget \
        file \
        libxdo-dev \
        libssl-dev \
        libayatana-appindicator3-dev \
        librsvg2-dev \
    && apt-get clean -y && rm -rf /var/lib/apt/lists/*