#!/bin/bash

##      -- dcoker network create --     ##
    
    # Crea una nueva network de docker

doocker network create --driver "bridge" nueva_network

    # la opcion '--dirver' es usado para indicar que driver
    # queremos que maneje la network, el defual es "bridge"
