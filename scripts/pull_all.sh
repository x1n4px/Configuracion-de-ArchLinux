#!/bin/bash

# Directorio raíz donde se buscarán las subcarpetas
directorio_raiz="/home/in4p/uma"

# Recorre todas las subcarpetas dentro del directorio raíz
for subcarpeta in "$directorio_raiz"/*/; do
    if [ -d "$subcarpeta" ]; then
        echo "Ejecutando 'basic' en $subcarpeta"
        cd "$subcarpeta" || exit
        git pull;  # Aquí es donde ejecutas el comando "basic"
        cd - > /dev/null  # Vuelve al directorio raíz
    fi
done
