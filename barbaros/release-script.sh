#!/bin/bash

apt-ftparchive -a amd64 packages pool/main > dists/stable/main/binary-amd64/Packages
gzip -k -f dists/stable/main/binary-amd64/Packages
xz -k -f dists/stable/main/binary-amd64/Packages
