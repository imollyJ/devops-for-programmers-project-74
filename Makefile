# Запуск приложения в режиме разработки
dev:
	docker-compose up

# Запуск тестов
test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

# New tests
ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

setup-env:
	test -f .env || cp .env.examle .env

install-dependencies-npm:
	docker-compose run -rm app npm install
