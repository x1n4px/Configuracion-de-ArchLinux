#!/bin/bash

# Contraseña para los archivos RAR
PASSWORD="dw-anime"

# Buscar todos los archivos .rar en la carpeta actual
for archivo in *.rar; do
    # Verificar si el archivo existe para evitar errores si no hay archivos RAR
    if [[ -f "$archivo" ]]; then
        echo "Descomprimiendo: $archivo"

        # Descomprimir el archivo con la contraseña
        unrar x -p"$PASSWORD" "$archivo"

        # Verificar si la extracción fue exitosa
        if [[ $? -eq 0 ]]; then
            echo "Descompresión exitosa: $archivo"
        else
            echo "Error al descomprimir: $archivo"
        fi
    else
        echo "No se encontraron archivos .rar"
    fi
done
