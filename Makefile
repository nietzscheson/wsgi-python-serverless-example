.PHONY: 

down:
	docker-compose down
volume:
	docker volume prune -f
pull:
	docker-compose pull
build:
	docker-compose build
dependencies:
	docker-compose run --rm wsgi npm install
up: pull build dependencies
	docker-compose up -d
	docker ps -a
init: down volume up
ps:
	docker-compose ps
deploy:
	docker-compose run --rm wsgi sls deploy
remove:
	docker-compose run --rm wsgi sls remove