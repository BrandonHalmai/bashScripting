#! /bin/bash
total=$(df -h | awk '/root/ {print $2}')
avaliable=$(df -h | awk '/root/ {print $4}')

printf "Total size: $total\n"
printf "Avaliable size: $avaliable\n"
