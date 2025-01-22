#!/bin/bash

clear

printf '\e[8;24;80t'

cd ..
cd Assets
cat Menu-3.txt
cat Menu-2.txt

show_menu() {
  echo "Select an option:"
  echo "1. Assets (Requires MC)"
  echo "2. GIMP"
  echo "3. Modrinth"
  echo "4. Blockbench"
  echo "5. Exit"
  read -p "Enter your choice: " choice
}

# Main loop
while true; do
  show_menu

  case "$choice" in
    1)
      mc ../Assets/Scripts-Open/Textures/
      break
      ;;
    2)
      echo "Loading..."
      gimp
      break
      ;;
    3)
      echo "Loading..."
      Modrinth
      break
      ;;
    4)
      echo "Loading..."
      blockbench
      break
      ;;
     5)
      echo "Exiting..."
      break
      ;;
    *)
      echo "Invalid Choice"
      break
      ;;
  esac
done

clear