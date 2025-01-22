#!/bin/bash

clear

printf '\e[8;26;80t'

cd ..
cd Assets
cat Menu.txt
cat Menu-2.txt

echo "DO NOT RUN AS ROOT!"
whoami
echo

show_menu() {
  echo "Select an option:"
  echo "1. Games"
  echo "2. RSP Making"
  echo "3. Tools"
  echo "4. Exit"
  read -p "Enter your choice: " choice
}

# Main loop
while true; do
  show_menu

  case "$choice" in
    1)
      echo "Loading..."
      cd ..
      cd Scripts
      ./Games.sh
      break
      ;;
    2)
      echo "Loading..."
      cd ..
      cd Scripts
      ./RSP.sh
       break
      ;;
    3)
      echo "Loading..."
       break
      ;;
    4)
      echo "Exiting..."
      break
      ;;
    *)
      echo "Invalid Choice"
      ;;
  esac
done

clear