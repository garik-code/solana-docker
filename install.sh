#!/bin/sh

docker-compose up --build -d
docker exec -ti solana bash install.sh && cd /build/solana-release/ && export PATH=$PWD/bin:$PATH && cd .. && cd .. && solana --version
mv install.sh install.sh.off
docker exec -ti solana bash
