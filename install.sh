#!/bin/sh

docker-compose up --build -d
docker exec -ti solana sh install.sh
docker exec -ti solana cd /root/build/solana-release/ && export PATH=$PWD/bin:$PATH && cd .. && cd .. && solana --version
mv install.sh install.sh.off
docker exec -ti solana bash
