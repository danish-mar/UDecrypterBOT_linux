clear 

echo "UDecrypter BOT Scripted by Mr.Den_Mar" | pv -qL 10

echo "Starting up UDecrypter Bot" | pv -qL 10
echo "//////////////////////////" | pv -qL 5

echo "Hello There i Am UDecrypter" | pv -qL 10

echo "Please Tell me Which .Cap file you want to Decrypt ?" | pv -qL 10
read -a cap
sleep 1s
echo "Ok, Now tell me which file did i use as a wordlist ?" | pv -qL 10

read -a wrdlst
sleep 1s
echo "Got it Now tell me what is the name of that WI-FI which is belongs to this cap file :" $cap | pv -qL 10

read -a essid
sleep 1s
echo "Ok Stay Back and Chill I will take care of that And Make Sure Your Hardware are not overheating !!" | pv -qL 10

echo "Starting Decryption in 5 seconds Using Aircrack-NG" | pv -qL 10
echo "1" | pv -qL 1
echo "2" | pv -qL 1
echo "3" | pv -qL 1
echo "4" | pv -qL 1
echo "5" | pv -qL 1
touch key.txt

echo "Starting!!" | pv -qL 10


aircrack-ng -e $essid -l key.txt -w $wrdlst $cap

echo "YAY Decryption Sucess check the key.txt for Result"
