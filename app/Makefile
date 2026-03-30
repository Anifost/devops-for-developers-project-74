setup:
	docker-compose run --rm app make setup

up-exist:
	docker compose up --abort-on-container-exist

start:
	docker compose up

down:
	docker compose down

test:
	docker compose -f docker-compose.yml up --abort-on-container-exit

dev:
	docker-compose up

ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

ci-build:
	docker compose -f docker-compose.yml build app

push prod-push:
	docker compose -f docker-compose.yml push app

prod-build:
	docker compose -f docker-compose.yml build app