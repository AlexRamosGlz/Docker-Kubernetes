#!/bin/bash

##      -- kubectl run [OPTIONS] --     ##
    
    # Este comando SOLO se puede usar para crear pods de una imagen de docker

kubectl run my-nginx --image nginx



# - Crear un pod y accedes a su terminal -

kubectl run tm-shell --rm -it --image bretfisher/netshoot -- bash 

    # La opcion "--rm" es usado para eliminar el pod al salir de la terminal
    # La opcion "-it" es usado para acceder a la terminal del pod
    # "-- bash" es la forma de cambiar el comando por defecto de la imagen
    #

