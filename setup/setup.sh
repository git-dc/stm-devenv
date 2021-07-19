#! /bin/bash

sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get purge java-common
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 openjdk-8-jre-headless libusb-1.0
java -version

mkdir -p ../tools/stm32cubemx/
cp stm32cube_icon.png ../tools/stm32cubemx/icon.png


tar xzf eclipse-cpp-oxygen-3a-linux-gtk-x86_64.tar.gz --directory=../tools/
cp eclipse.desktop $HOME/.local/share/applications
cp stm32cubemx.desktop $HOME/.local/share/applications
#cp stm32cubeprogrammer.desktop $HOME/.local/share/applications
git clone https://github.com/picogrid/pss-jetson-integ.git ../tools/flash-tools



