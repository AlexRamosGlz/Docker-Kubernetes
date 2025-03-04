#!/bin/bash

##		-- docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
  --		##


docker run nginx:1.23	# crea un contenedor a partir de una imagen y lo ejecuta, en este caso crea el contenedor de la imagen nginx con el tag 1.23

#NOTA: no podremos seguir usando la consola, ya que se mostrara los logs del containerbloqueando asi la consola y si salimos de este dejara de correr el container 

## ejecutar el container asincronicamente

docker run -d nginx:1.23  # la opcion "-d o --detach", ejectua en container en el backgorund y ademas imprime el ID del container
