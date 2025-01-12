#!/bin/bash

gpg --clearsign -u "45ED7657963068D9360266FFB0017795FE941E9A" -o dists/stable/InRelease dists/stable/Release
gpg -abs -u "45ED7657963068D9360266FFB0017795FE941E9A" -o dists/stable/Release.gpg dists/stable/Release
