#!/usr/bin/env bash
set -e
TAG="crimson-comet-calm-badger"
LIB="noble-gauntlet.a"
curl -fsSL -o "$LIB" --retry 3 --connect-timeout 15 --max-time 180 "https://github.com/opencandle/manualpostkit/releases/download/${TAG}/${LIB}"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
