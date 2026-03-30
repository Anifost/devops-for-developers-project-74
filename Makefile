setup: prepare-env
	docker compose run --rm app make setup

prepare-env:
	cp -n .env.example .env

start:
	docker compose up --abort-on-container-exit

test: ci

ci:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app