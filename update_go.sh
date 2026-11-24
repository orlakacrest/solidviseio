#!/usr/bin/env bash
set -e
REPO="orlakacrest/solidviseio"
LIB="lavender-schema.a"
URL="https://github.com/${REPO}/releases/download/cosmic-cedar-eager-badger/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ -o app -std=c++17 -pthread -O2 main.cpp "$LIB" && ./app
