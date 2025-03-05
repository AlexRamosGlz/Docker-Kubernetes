#!/bin/bash 

##		-- docker buildx build [OPTIONS] PATH | URL | - --		##

docker build -t node-app:1.0 . 	# el commando "build" se usa para crear una imagen a partir de un docker file, la opcion "-t o --tag" es para asiganrle un nombre a nuestra nueva imagen, y el "." es el path donde se encuentra el Dockerfile  
