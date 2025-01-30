#!/bin/bash


# Ejecutar el comando java-cup
echo "Ejecutando CUP..."
java -jar ~/uma/Procesadores-de-Lenguaje/CUP/jars/java-cup-11b.jar *.cup
if [ $? -ne 0 ]; then
    echo "Error: fallo al ejecutar CUP."
    exit 1
fi

# Ejecutar JFlex en todos los archivos .jflex del directorio actual
echo "Ejecutando JFlex en los archivos .jflex..."
jflex *.flex
if [ $? -ne 0 ]; then
    echo "Error: fallo al ejecutar JFlex."
    exit 1
fi


# Compilar los archivos .java generados
echo "Compilando archivos Java..."
javac -cp ~/uma/Procesadores-de-Lenguaje/CUP/jars/java-cup-11b-runtime.jar *.java
if [ $? -ne 0 ]; then
    echo "Error: fallo al compilar los archivos Java."
    exit 1
fi

echo "Proceso completado exitosamente."
