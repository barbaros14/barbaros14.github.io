#!/bin/bash

echo -e 'deb [arch=amd64 signed-by=/usr/share/keyrings/barbaros.gpg] https://barbaros14.github.io/barbaros stable main\ndeb [arch=amd64 signed-by=/usr/share/keyrings/barbaros.gpg] https://arslansah.com.tr/barbaros stable main' | sudo tee /etc/apt/sources.list.d/barbaros.list
sudo wget -q -O- https://barbaros14.github.io/barbaros/dists/stable/Release.key | sudo apt-key --keyring /usr/share/keyrings/barbaros.gpg add -
