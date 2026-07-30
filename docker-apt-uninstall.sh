#!/bin/bash
sudo apt-get remove docker-compose-plugin
sudo apt -y purge docker-ce docker-ce-cli containerd.io
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd
sudo apt-get -y autoremove
