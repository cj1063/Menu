#!/bin/bash

clear

printf '\e[8;25;80t'

cd ..
cd Assets
cat Menu-4.txt
cat Menu-2.txt

show_menu() {
  echo "Select an option:"
  echo "1. Steam"
  echo "2. Modrinth"
  echo "3. Tint"
  echo "4. NSnake"
  echo "5. Exit"
  read -p "Enter your choice: " choice
}

# Main loop
while true; do
  show_menu

  case "$choice" in
    1)
      echo "Loading..."
      steam
      break
      ;;
    2)
      echo "Loading..."
      Modrinth
      break
      ;;
    3)
      echo "Loading..."
      tint -l 1
      break
      ;;
    4)
      echo "Loading..."
      nsnake
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
