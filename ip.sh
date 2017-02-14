#!/bin/bash
ip=`ifconfig | grep "inet adr" | awk -F ":" '{print $2}' |  awk -F " " '{print $1}'`
ip=`echo $ip | awk -F " " '{print $1}'`
down=`ifconfig | grep "Přijato" | awk -F "(" '{print $2}'`
down=`echo $down | awk -F ")" '{print $1}'`
up=`ifconfig | grep "Přijato" | awk -F "(" '{print $3}'`
up=`echo $up | awk -F ")" '{print $1}'`
disk=`df -h | grep /dev/sda1 | awk -F " " '{print $4}'`
cas=`date +"%d.%m.%Y - %H:%M:%S"`
echo "Moje ip je: "$ip
echo
echo "Přijato: "$down
echo "Odesláno: "$up
echo
echo "Volné místo na disku: "$disk"B"
echo
echo "Datum: "$cas
