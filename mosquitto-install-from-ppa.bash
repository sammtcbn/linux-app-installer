#!/bin/bash
# Install Mosquitto Broker for Ubuntu
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit
fi

apt-add-repository -y ppa:mosquitto-dev/mosquitto-ppa
apt update
apt -y install mosquitto
apt -y install mosquitto-clients
