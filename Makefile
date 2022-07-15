build:
	docker-compose build

up:
	docker-compose up -d

upb:
	docker-compose up -d --build

down:
	docker-compose down

downv:
	docker-compose down -v

stop:
	docker-compose stop

migrate:
	docker-compose exec web python manage.py migrate

flush:
	docker-compose exec web python manage.py flush --no-input


images:
	docker-compose images

ps:
	docker-compose ps

logs:
	docker-compose logs -f

.PHONY: build up upb down stop migrate flush
