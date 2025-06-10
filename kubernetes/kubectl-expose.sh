#!/bin/bash

##      --   kubectl expose (-f FILENAME | TYPE NAME) [--port=port] [--protocol=TCP|UDP|SCTP] [--target-port=number-or-name] [--name=name] [--external-ip=external-ip-of-service] [--type=type] [options]  --     ##
    
    # Exponer un recurso de Kubernetes como un servicio

# - Exponer el puerto de un deployment -

kubectl expose deploy/httpenv --port 8888 

    # el typo de servicio por defecto es "ClusterIP"

# - Exponer el puerto de un resource al trafico externo -

kubectl expose deploy httpenv --port 8888 --name httpenv-np --type NodePort

    # La opcion "--name" es usado para especificar el nombre del servicio
    # La opcion "--type" es usado para especificar el tipo de servicio
    #
    # Ahora httpenv-np es accesible desde localhost

