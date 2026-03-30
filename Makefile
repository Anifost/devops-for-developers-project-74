.PHONY: setup test dev build push ci

# Установка зависимостей внутри контейнера
setup:
	docker compose run --rm app npm install

# Запуск тестов внутри контейнера
test:
	docker compose run --rm app npm run test

# Разработка: поднятие контейнеров и запуск приложения
dev:
	docker compose up

# Сборка проекта
build:
	docker compose run --rm app npm run build

# Отправка образа на Docker Hub (если нужно)
push:
	docker compose run --rm app npm run push

# CI-процесс: миграции и тесты
ci:
	docker compose run --rm app npm run migrate && npm run test