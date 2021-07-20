clear 

echo "UDecrypter BOT Scripted by Mr.Den_Mar" 

echo "Starting up UDecrypter Bot" 
echo "//////////////////////////" 

echo "Hello There i Am UDecrypter" 

echo "Please Tell me Which .Cap file you want to Decrypt ?"  
read -a cap
sleep 1s
echo "Ok, Now tell me which file did i use as a wordlist ?" 

read -a wrdlst
sleep 1s
echo "Got it Now tell me what is the name of that WI-FI which is belongs to this cap file :" $cap 
read -a essid
sleep 1s
echo "Ok Stay Back and Chill I will take care of that And Make Sure Your Hardware are not overheating !!" 

echo "Starting Decryption in 5 seconds Using Aircrack-NG" 

touch key.txt

echo "Starting!!" | pv -qL 10


aircrack-ng -e $essid -l key.txt -w $wrdlst $cap

echo "YAY Decryption Sucess check the key.txt for Result"
