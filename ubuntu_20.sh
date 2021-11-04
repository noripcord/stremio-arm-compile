#!/bin/bash

git clone --recurse-submodules -j8 git://github.com/Stremio/stremio-shell.git
apt-get update
apt-get -y install cmake
apt-get -y install qtcreator qt5-qmake qt5-default g++ pkgconf libssl-dev
apt-get -y install libmpv-dev
apt-get -y install libqt5webview5-dev
apt-get -y install libkf5webengineviewer-dev
apt-get -y install qml-module-qtwebchannel qml-module-qt-labs-platform qml-module-qtwebengine qml-module-qtquick-dialogs qml-module-qtquick-controls qtdeclarative5-dev qml-module-qt-labs-settings qml-module-qt-labs-folderlistmodel

cd stremio-shell
apt-get -y install librsvg2-bin
qmake
make -f release.makefile
apt-get -y install nodejs
cp ./server.js ./build/ && ln -s "$(which node)" ./build/node

# cleanup

apt-get -y remove libkf5webengineviewer-dev 
apt-get -y remove libqt5webview5-dev
apt-get -y remove libssl-dev
apt-get -y remove g++
apt-get -y remove pkgconf
apt-get -y remove qt5-default
apt-get -y remove qt5-qmake
apt-get -y remove qtcreator

apt-get -y autoremove

# erase everything except build
ls -1 | grep -v "build$" | xargs -I% rm -rf "%"

# run
./build/stremio