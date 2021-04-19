#!/bin/sh

docker-compose up --build -d
docker exec -ti solana bash install.sh
mv install.sh .install.sh
