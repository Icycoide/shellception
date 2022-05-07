#!/bin/env bash

main() {
tunnel
}

tunnel() {
echo "
   _____ _          _ _                _   _             
  / ____| |        | | |              | | (_)            
 | (___ | |__   ___| | | ___ ___ _ __ | |_ _  ___  _ __  
  \___ \| '_ \ / _ \ | |/ __/ _ \ '_ \| __| |/ _ \| '_ \ 
  ____) | | | |  __/ | | (_|  __/ |_) | |_| | (_) | | | |
 |_____/|_| |_|\___|_|_|\___\___| .__/ \__|_|\___/|_| |_|
 A shell inside a shell         | |                      
                                |_|"
shcept_main
}

shcept_main() {
echo "╭"$PWD
read -p "╰» " SHCEPT_ANSWER
$SHCEPT_ANSWER
shcept_main
}

main
