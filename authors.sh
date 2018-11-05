#!/bin/bash
RED='\033[1;31m'
YELLOW='\033[1;33m'
GREEN='\033[1;32m'
ORANGE='\033[0;33m'
NC='\033[0m' # No Color
secs=5
width=120
toggle=true

titles=("GS02 - An end-to-end tour of the Microsoft developer platform"
          "Drew Robbins"
          "Akira Inoue"
          "Yoshio Terada"
          "Saki Homma"
          "Madoka \"Chomado\" Chiyoda")

subtitles=("http://github.com/drewby/ts18dev"
             "Commercial Software Engineering"
             "Global Black Belt"
             "Cloud Developer Advocate"
             "Commercial Software Engineering"
             "Cloud Developer Advocate"
             )

twitters=(""
          "@drewrobbins"
          "@chack411"
          "@yoshioterada"
          "@sakkuru"
          "@chomado")

while true 
do

    printf "\033c"
    clear && echo -en "\e[3J" 
    for idx in 0 1 2 3 4 5
    do
        printf "${YELLOW}"
        figlet -w $width ${titles[$idx]}
        printf "${GREEN}${subtitles[$idx]}\n${RED}${twitters[$idx]}\n\n"
        printf "${NC}\n\n\n"
        sleep $secs
    done 

    if $toggle
    then
        toggle=false
        sl
    else
        toggle=true
        timeout --foreground 5s cmatrix
    fi

done
