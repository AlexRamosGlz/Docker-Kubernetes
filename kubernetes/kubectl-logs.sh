#!/bin/bash

##      -- kubectl logs [OPTIONS] RESOURCE --     ##
    
    # Imprime los logs de un pod o contenedor especifico


# - Mostrar los logs de un contenedor de un deploy -

kubectl logs deploy/my-apache

    # Por si solo este comando elgie una replica aleatoria del deploy, y
    # muestra los logs del primer contenedor del pod


kubectl logs deploy/my-apache --follow --tail 1

    # La opcion "--follow" es usado para seguir los logs en tiempo real
    # y la opcion "--tail" es usado para mostrar solo las ultimas lineas de los logs
    # en este caso, solo se mostrara la ultima linea de los logs


# - Mostrar los logs de un container especifico de un pod -

kubectl logs pod/my-apache-856f76d9f8-6ppwb -c httpd

    # La opcion "-c" es usado para especificar el contenedor del pod
    # en este caso, se esta mostrando los logs del contenedor "httpd"
    # del pod "my-apache-856f76d9f8-zlrff"

kubectl logs pod/my-apache-856f76d9f8-6ppwb --all-containers

    # La opcion "--all-containers" es usado para mostrar los logs de todos los contenedores del pod


# - Mostrar logs de multiples pods (filtrado por labels) -

kubectl logs -l app=my-apache

    # La opcion "-l" es usado para filtrar los pods por labels
    # en este caso, se esta mostrando los logs de todos los pods
    # que tienen el label "app=my-apache"   