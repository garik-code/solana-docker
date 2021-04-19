#!/bin/sh

apt-get install wget -y
mkdir build
cd build
wget -O solana.tar.bz2 https://github.com/solana-labs/solana/releases/download/v1.6.6/solana-release-x86_64-unknown-linux-gnu.tar.bz2
echo 'Building solana...'
tar jxf solana.tar.bz2
