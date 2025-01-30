#!/bin/bash

# Directorio raíz donde se buscarán las subcarpetas
directorio_raiz="/home/in4p/uma"

# Recorre todas las subcarpetas dentro del directorio raíz
for subcarpeta in "$directorio_raiz"/*/; do
    if [ -d "$subcarpeta" ]; then
        echo "Ejecutando 'basic' en $subcarpeta"
        cd "$subcarpeta" || exit
        git add .; git commit -m "act";git push  # Aquí es donde ejecutas el comando "basic"
        cd - > /dev/null  # Vuelve al directorio raíz
    fi
done

