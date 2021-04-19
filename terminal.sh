#!/bin/sh
clear
docker exec -ti solana /bin/sh -c 'cd build/solana-release && export PATH=$PWD/bin:$PATH && solana --version && bash'
