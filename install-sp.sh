#!/usr/bin/env bash

mkdir -p ~/.local/bin
cd ~/.local/bin
wget https://gist.githubusercontent.com/emilio1625/5e8f9e5d81965b9b69d8c5c0bbcab8cb/raw/8a2d695e4fee46b152ff41ff622a8873eb5523da/sp
chmod +x sp
export PATH=$PATH:~/.local/bin

