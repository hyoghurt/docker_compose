all:
			mkdir -p ${HOME}/data/wordpress
			mkdir -p ${HOME}/data/mariadb
			docker-compose -f ./srcs/docker-compose.yml up --build

clean:
			docker rm -f $$(docker ps -aq)
			docker network rm app-network
			docker volume rm $$(docker volume ls -q)
			sudo rm -rf ${HOME}/data

.PHONY:		all clean
