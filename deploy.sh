#!/bin/bash

echo "--- 1. Подтягиваем свежий код из Git ---"
git pull origin main

echo "--- 2. Останавливаем старые контейнеры ---"
docker compose down

echo "--- 3. Собираем и запускаем проект ---"
docker compose up -d --build

echo "--- 4. Проверяем статус ---"
docker compose ps

