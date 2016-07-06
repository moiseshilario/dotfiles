#!/usr/bin/ bash

#
# Mutate Installation
# --------------------------------------------------------------------

# Dependencies
sudo apt-get install build-essential qt5-qmake qt5-default libgtk2.0-dev libqt5x11extras5-dev libboost-regex-dev -y

# Mutate
cd ~/.softwares
git clone https://github.com/qdore/Mutate.git
cd Mutate/src
qmake
make

sudo make install
cd ..
sudo cp info/mutate.png /usr/share/icons
sudo cp info/Mutate.desktop /usr/share/applications
mkdir -p ~/.config/Mutate
cp -R config/* ~/.config/Mutate
chmod -R a+x ~/.config/Mutate/scripts
chmod -R a+w ~/.config/Mutate
sed -i "s|{home}|$HOME|g" ~/.config/Mutate/config.ini

cd ~

cd ~/.custom/plugins && git clone https://github.com/wbinglee/zsh-wakatime.git