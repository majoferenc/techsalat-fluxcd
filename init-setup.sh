#!/bin/bash

# Install Flux CLI
curl -s https://fluxcd.io/install.sh | sudo bash

# Create a GitHub personal access token and export it as an env var
# https://github.com/settings/tokens
export GITHUB_TOKEN=<YOUR-TOKEN>
    
# Bootstrap Flux with target Git repo
flux bootstrap github --owner=majoferenc --repository=techsalat-fluxcd --path=clusters/my-cluster

# Add Git source for your Helm Charts Repository
flux create source git helm-charts --url=https://github.com/majoferenc/techsalat-fluxcd-helm-charts.git --branch main --interval 30s
