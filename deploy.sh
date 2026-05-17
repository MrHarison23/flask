#!/bin/bash
set -euo pipefail

cd /root/flask
git pull origin main

if docker compose version &>/dev/null; then
  docker compose down
  docker compose up -d --build
else
  docker-compose down
  docker-compose up -d --build
fi

docker compose ps 2>/dev/null || docker-compose ps
