setup: setup-env
	docker compose run --rm app make setup

setup-env:
	cp -n .env.example .env

check-start:
	docker compose up --abort-on-container-exit

start:
	docker compose up

down:
	docker compose down

test:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

ci: test

prod-build:
	docker compose -f docker-compose.yml build app

prod-push:
	docker compose -f docker-compose.yml push app

run-image:
	docker run -p 8080:8080 -e NODE_ENV=development Oligkondr/devops-for-developers-project-74 make dev