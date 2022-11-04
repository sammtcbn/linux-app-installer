#!/bin/bash
# Install Mosquitto Broker for Ubuntu
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit
fi

apt update
apt -y install mosquitto
apt -y install mosquitto-clients
