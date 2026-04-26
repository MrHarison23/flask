#!/bin/bash

    echo "Deploy Flask..."
	cd  /home/david/flask

	git pull origin main

	docker compose down
	docker compose up -d --build

    echo "Deploy done!"
