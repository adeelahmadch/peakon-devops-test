.PHONY: build

NAME="fake-product"

build:
	@docker-compose -p ${NAME} up -d --build

info: ## to get info about docker container IP and logs	
	@docker-compose -p ${NAME} ps
	@docker-compose -p ${NAME} logs -f

stop: 
	@docker-compose -p ${NAME} stop
	@docker-compose -p ${NAME} rm -f
