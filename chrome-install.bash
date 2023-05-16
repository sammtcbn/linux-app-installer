#!/bin/bash
# install Google Chrome for Ubuntu 64-bit

echo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb || exit 1

echo
echo dpkg -i google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb || exit 1

echo
echo rm -f google-chrome-stable_current_amd64.deb
rm -f google-chrome-stable_current_amd64.deb || exit 1

echo
echo cat /etc/apt/sources.list.d/google-chrome.list
cat /etc/apt/sources.list.d/google-chrome.list || exit 1
echo

echo "Install chrome ... done"
