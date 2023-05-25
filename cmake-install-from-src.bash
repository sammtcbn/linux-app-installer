#!/bin/bash
cmakever=3.26.4
cmakefn=cmake-${cmakever}.tar.gz

sudo apt-get install -y build-essential libssl-dev || exit 1

wget https://github.com/Kitware/CMake/releases/download/v${cmakever}/${cmakefn} || exit 1
tar zxfv ${cmakefn} || exit 1

cd cmake-${cmakever} || exit 1
./bootstrap || exit 1
make || exit 1
sudo make install || exit 1

echo done
