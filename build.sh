#!/bin/sh

sudo apt install git nodejs npm nasm build-essential libacl1-dev libncurses-dev libglu1-mesa-dev libxxf86vm-dev libxkbfile-dev libxext-dev clang libfontconfig1-dev python libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev libbz2-dev libice-dev libsm-dev libxt-dev
git clone https://github.com/onivim/oni2
cd oni2
sudo npm install -g node-gyp
node install-node-deps.js
sudo npm install -g esy@latest
esy install
esy bootstrap
esy build
esy '@release' install
esy '@release' build
esy '@release' run -f --checkhealth
esy '@release' create
