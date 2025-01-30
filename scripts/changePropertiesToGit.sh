#!/bin/bash

# Directorios origen y destino
directorio_origen_1="/home/in4p/inergis/configurationProperties/BACKEND"
directorio_destino_1="/home/in4p/inergis/fguma/01-CODIGO/BACKEND/fguma/src/main/resources"

directorio_origen_2="/home/in4p/inergis/configurationProperties/BACKEND_STUDENT"
directorio_destino_2="/home/in4p/inergis/fguma/01-CODIGO/BACKEND_STUDENT/fguma/src/main/resources"

# Función para intercambiar archivos
function intercambiar_archivos() {
  archivo_origen="$1"
  archivo_destino="$2"

  # Crear archivo temporal
  archivo_temporal="$archivo_origen.tmp"
  mv "$archivo_origen" "$archivo_temporal"

  # Mover archivo destino a origen
  mv "$archivo_destino" "$archivo_origen"

  # Mover archivo temporal a destino
  mv "$archivo_temporal" "$archivo_destino"
}

# Intercambiar archivos entre el primer par de directorios
for archivo in "$directorio_origen_1"/*; do
  archivo_destino="$directorio_destino_1/${archivo##*/}"
  intercambiar_archivos "$archivo" "$archivo_destino"
done

# Intercambiar archivos entre el segundo par de directorios
for archivo in "$directorio_origen_2"/*; do
  archivo_destino="$directorio_destino_2/${archivo##*/}"
  intercambiar_archivos "$archivo" "$archivo_destino"
done

echo "** ¡Archivos intercambiados con éxito! **"
