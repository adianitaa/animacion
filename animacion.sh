#!/bin/bash

delay=0.1
width=40

# Función para mostrar al stickman caminando
draw_stickman() {
  local pos=$1
  local leg=$((pos % 2))
  local leg_style1="/ \\"
  local leg_style2="\\ /"
  local legs=$([[ $leg -eq 0 ]] && echo "$leg_style1" || echo "$leg_style2")

  printf "%*s\n" $pos " o"
  printf "%*s\n" $pos "/|\\"
  printf "%*s\n" $pos "$legs"
}

# Función para mostrar un dinosaurio
draw_dino() {
  local pos=$1
  printf "%*s\n" $pos "           __"
  printf "%*s\n" $pos "          / _)"
  printf "%*s\n" $pos "  .----./ /"
  printf "%*s\n" $pos " /         /"
  printf "%*s\n" $pos "/  (  | (  |"
  printf "%*s\n" $pos "\\/\\|/\\|"
}

# Fase 1: El stickman camina feliz
for ((i=0; i<20; i++)); do
  clear
  draw_stickman $i
  sleep $delay
done

# Fase 2: Aparece un dino sospechoso
for ((i=20; i<25; i++)); do
  clear
  draw_stickman $i
  draw_dino 30
  sleep $delay
done

# Fase 3: El dino lo empieza a perseguir
for ((i=25; i<width; i++)); do
  clear
  draw_stickman $i
  draw_dino $((i - 5))
  sleep $delay
done

# Fase final: Stickman grita y desaparece
for ((j=0; j<3; j++)); do
  clear
  printf "%*s\n" 35 " o  AHHHH!"
  printf "%*s\n" 35 "/|\\"
  printf "%*s\n" 35 "/ \\"
  sleep 0.3
done

clear
echo -e "\n\n      💀 El Stickman murió. Fin."
sleep 2
