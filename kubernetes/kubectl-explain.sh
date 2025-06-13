#!/bin/bash

##      -- kubectl explain [OPTIONS] TYPE --     ##
    
    # Imprime informacion acerca de los campos y estructura
    # de varios resources


# - Obtener todos los keys que cada TYPE soporta -

kubectl explain service --recursive