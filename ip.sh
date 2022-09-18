#! /bin/bash
printf "IP Address of the machine is: "

ip_address=$(ifconfig | awk '/inet/ {print $2}' | head -1)

echo "$ip_address"
