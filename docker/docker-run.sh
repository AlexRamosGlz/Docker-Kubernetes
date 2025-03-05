#!/bin/bash

##		-- docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
  --		##


docker run nginx:1.23	# crea un contenedor a partir de una imagen y lo ejecuta, en este caso crea el contenedor de la imagen nginx con el tag 1.23

#NOTA: no podremos seguir usando la consola, ya que se mostrara los logs del containerbloqueando asi la consola y si salimos de este dejara de correr el container 

	# * el comando "docker run..." crea NUEVOS containers, no reusa containeres que ya existen, solo crea una nueva instancia de la imagen * #


## ejecutar el container asincronicamente

docker run -d nginx:1.23  # la opcion "-d o --detach", ejectua en container en el backgorund y ademas imprime el ID del container


## port binding

dcoker run -d -p 9000:80 nginx:1.23	# la opcion "-p o --publish", conecta el port del container con el del host, es decir, ahora el host puede acceder al container a traves del puerto que se proveyo en este caso el 9000

	#	* El puerto 9000 de nuestro host apunta al puerto 80 del container *	#


## Agregar un nombre a nuestro container

docker run -d -p 8000:80 --name web-app nginx:1.23	# la opcion "--name" nos deja nombrar al container que vamos a crear, en este caso el nombre seria "web-app"
