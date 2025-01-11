#!/bin/bash

echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/barbaros.gpg] https://barbaros14.github.io/barbaros stable main' | sudo tee /etc/apt/sources.list.d/barbaros.list
sudo wget -O- https://barbaros14.github.io/barbaros/dists/stable/Release.key | sudo apt-key --keyring /usr/share/keyrings/barbaros.gpg add -