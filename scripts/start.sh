#!/bin/bash

echo "Checking if the environment is clean before bringing it up."
scripts/./stop.sh

echo "Running docker compose for env"
cd docker-compose
docker-compose up -d

echo "Environment running, opening localhost:8080."
xdg-open http://localhost:8080