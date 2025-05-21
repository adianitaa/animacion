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

