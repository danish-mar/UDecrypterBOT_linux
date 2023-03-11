#!/bin/bash

clear 

essid_prompt=$(tput setaf 5)$(tput bold)"Please tell me which Wi-Fi network the .cap file belongs to: "$(tput sgr0)
cap_prompt=$(tput setaf 5)$(tput bold)"Please tell me the path to the .cap file you want to decrypt: "$(tput sgr0)
wordlist_prompt=$(tput setaf 5)$(tput bold)"Please tell me the path to the wordlist file you want to use: "$(tput sgr0)
starting_message=$(tput setaf 4)$(tput bold)"Starting up UDecrypter Bot...\n////////////////////////////////////\n"$(tput sgr0)
decrypting_message=$(tput setaf 4)$(tput bold)"Starting decryption using Aircrack-NG...\n"$(tput sgr0)
success_message=$(tput setaf 2)$(tput bold)"Hurray! Decryption successful! Check the key.txt file for the result. Have a great day in the world of Genshin!\n"$(tput sgr0)

printf "$starting_message"
printf "$(tput setaf 5)$(tput bold)Hello there, I am UDecrypter. Let's decrypt some Wi-Fi passwords in the world of Genshin!$(tput sgr0)\n"

read -p "$cap_prompt" cap
read -p "$wordlist_prompt" wordlist
read -p "$essid_prompt" essid

printf "$(tput setaf 5)$(tput bold)Great! Sit back and relax while I take care of the decryption process. But first, let's make sure your device is not overheating with all this Genshin magic going on!$(tput sgr0)\n"

printf "$decrypting_message"
touch key.txt
aircrack-ng -e "$essid" -l key.txt -w "$wordlist" "$cap"

printf "$success_message"
