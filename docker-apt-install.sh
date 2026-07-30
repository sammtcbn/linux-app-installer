#!/bin/bash
# ref to https://docs.docker.com/engine/install/ubuntu/

sudo apt -y update || exit 1
sudo apt -y install ca-certificates curl gnupg lsb-release || exit 1

# Add Docker’s official GPG key
sudo mkdir -p /etc/apt/keyrings || exit 1
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker Engine
sudo apt -y update || exit 1
sudo apt -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin || exit 1

# Install Docker Compose
sudo apt -y install docker-compose || exit 1

docker -v || exit 1

sudo usermod -aG docker ${USER}

# reload the user groups
newgrp docker || exit 1
