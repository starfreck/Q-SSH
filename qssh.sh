#!/bin/sh
echo "**************************************"
echo "******** Welcome to Quick SSH ********"
echo "********  By Vasu Ratanpara   ********"
echo "********    Version : 1.0     ********"
echo "**************************************"
echo "Which Server do you want to connect...?"
echo ""
echo "[0] Exit"
echo "[1] example1.com"
echo "[2] example2.in"
echo "[3] example3.xyz"
# Add you Website Listing Name here with relavent number in switch case statement
echo ""

# Path to your PEM key folder for servers
cd /home/vasu/pem-keys

while :
do
  read -p "Please Enter your choice followed by [ENTER]: " option 
  echo ""
  case $option in
	1)
		# With PEM file
		ssh -i pemfilename.pem  username@ip
		break
		;;
	2)
		# Without PEM
		ssh username@ip
		break
		;;
	3)
		# Add your SSH commands here 
		ssh server@192.168.1.58 # (This is Demo)
		break
		;;
	0)	
		break
		;;
	*)
		echo "Sorry, I don't understand"
		echo ""
		;;
  esac
done
echo 
echo "That's all folks!"
