#!/bin/bash

apt update
apt install libqt5dbus5
sudo apt install libmpv-dev
apt install libqt5quick5
apt install nodejs
# TODO: link nodejs (ln -s) in the build folder
apt-get -y install libkf5webengineviewer-dev
apt-get -y install qml-module-qtwebchannel qml-module-qt-labs-platform qml-module-qtwebengine qml-module-qtquick-dialogs qml-module-qtquick-controls qtdeclarative5-dev qml-module-qt-labs-settings qml-module-qt-labs-folderlistmodel


