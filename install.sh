#!/bin/sh

docker-compose up --build -d
docker exec -ti solana bash install.sh
docker exec -ti solana /bin/sh -c 'cd build/solana-release && export PATH=$PWD/bin:$PATH && cd .. && cd .. && solana --version && bash'
mv install.sh install.sh.off
# docker exec -ti solana bash
