#!/bin/bash

##      -- kubectl get [OPTIONS] resource --     ##
    
    # Imprime informacion importante acerca de la resource especificada


# Mostrar los pods que estan corriendo

kubectl get pods


# Inpeccionar resources mas detalladamente

kubectl get all -o wide|yaml

    # la opcion "-o" es usado para el formato de salida de comando get,
    # los mas comunes son..
    #   
    #   wide    ->  Da un poco mas de informacion del resource
    #   yaml    ->  Imprime mucha mas informacio en formato yaml
    #


# - Inspeccionar resources en detalle -

kubectl describe deploy/my-apache

    # Muestra informacion detallada del deploy llamado "my-apache"
    # incluyendo eventos, replicas, imagenes, etc

kubectl describe  pod/my-apache-856f76d9f8-zlrff

    # Muestra informacion detallada del pod llamado "my-apache-856f76d9f8-zlrff"
    # incluyendo eventos, replicas, imagenes, etc


#   - Inspeccionar resources en tiempo real -

kubectl get pods -w

    # La opcion "-w" es usado para ver los cambios en tiempo real
    # de los resources, como por ejemplo, si un pod se crea o se elimina,
    # el comando seguira mostrando los cambios en tiempo real


# - Monitorear eventos en tiempo real -

kubectl get events
    
    # Asi como "pods" son resourses tambien los eventos de los mismos pods
    # son un resource, por lo que se pueden inspeccionar y ademas monit
    # orear en tiempo real
    #
    # Muestra los eventos que han ocurrido en el cluster, como por ejemplo,
    # cuando un pod se crea, se elimina, se actualiza, etc

kubectl get events --watch-only 

    #   --watch-only ->  Muestra los eventos en tiempo real, sin mostrar los eventos pasado