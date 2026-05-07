#!/bin/bash

cd /root/flask

git pull

docker-compose down
docker-compose up -d --build
