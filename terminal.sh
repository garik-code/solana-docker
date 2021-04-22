#!/bin/sh
clear
docker exec -ti solana /bin/sh -c 'cd build/solana-release && export PATH=$PWD/bin:$PATH && cd .. && cd .. && sudo solana-sys-tuner --user $(whoami) > sys-tuner.log 2>&1 & solana --version && bash'
