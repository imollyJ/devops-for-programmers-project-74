### Hexlet tests and linter status:
[![Actions Status](https://github.com/imollyJ/devops-for-programmers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/imollyJ/devops-for-programmers-project-74/actions)![Build and Push](https://github.com/imollyJ/devops-for-programmers-project-74/actions/workflows/push.yml/badge.svg)

DevOps for Programmers Project 74
Описание
Этот проект разворачивает приложение с использованием Docker и Docker Compose. Реализована поддержка HTTPS и базы данных PostgreSQL. В проекте также настроены тесты и сборка production-образа для развёртывания приложения.

Системные требования

Для работы с проектом требуется:

Docker версии 20.10.0 или выше

Docker Compose версии 1.27.0 или выше

GNU Make версии 4.2 или выше

Node.js версии 20 или выше (для локального запуска без контейнера)

Инструкции по запуску
Локальный запуск приложения через Docker Compose
1. Склонируйте репозиторий:
git clone https://github.com/imollyj/devops-for-programmers-project-74.git
cd devops-for-programmers-project-74

2. Создайте файл .env на основе .env.example:
cp .env.example .env

3. Запустите сервисы:
docker-compose up

4. Приложение будет доступно по адресу:
http://localhost:8080

Тесты
Для запуска тестов выполните следующую команду:

docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

Сборка production-образа
1. Соберите production-образ:
docker-compose -f docker-compose.yml build app

2. Загрузите образ в Docker Hub:
docker-compose -f docker-compose.yml push app

3. Production-образ доступен на Docker Hub с именем:
imollyj/devops-for-programmers-project-74:latest

4. Для запуска production-образа выполните:
   docker run -p 8080:8080 -e NODE_ENV=production imollyj/devops-for-programmers-project-74:latest
