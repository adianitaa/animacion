#!/bin/bash

# Parámetros
width=40          # Espacio horizontal disponible
delay=0.1         # Tiempo entre cuadros (en segundos)

# Figura del stickman
stickman=" o
/|\\
/ \\"

# Bucle infinito de animación
while true; do
  # Ir hacia la derecha
  for ((i=0; i<=width; i++)); do
    clear
    printf "%*s\n" $i " o"
    printf "%*s\n" $i "/|\\"
    printf "%*s\n" $i "/ \\"
    sleep $delay
  done

  # Ir hacia la izquierda
  for ((i=width; i>=0; i--)); do
    clear
    printf "%*s\n" $i " o"
    printf "%*s\n" $i "/|\\"
    printf "%*s\n" $i "/ \\"
    sleep $delay
  done
done
