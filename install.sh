#!/bin/sh

docker stack deploy --compose-file docker-compose.yml solana
docker exec -ti solana bash install.sh
mv install.sh .install.sh
