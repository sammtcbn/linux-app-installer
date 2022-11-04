#!/bin/bash
# Install Eclipse Paho MQTT C client library for Ubuntu 64-bit
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit
fi

apt update
apt -y install libssl-dev doxygen graphviz
git clone https://github.com/eclipse/paho.mqtt.c.git
cd paho.mqtt.c
make
make html
make install
