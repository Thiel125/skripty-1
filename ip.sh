#!/bin/bash
ip=`ifconfig | grep "inet adr" | awk -F ":" '{print $2}' |  awk -F " " '{print $1}'`
ip=`echo $ip | awk -F " " '{print $1}'`
down=`ifconfig | grep "Přijato" | awk -F "(" '{print $2}'`
down=`echo $down | awk -F ")" '{print $1}'`
up=`ifconfig | grep "Přijato" | awk -F "(" '{print $3}'`
up=`echo $up | awk -F ")" '{print $1}'`
disk=`df -h | grep /dev/sda1 | awk -F " " '{print $4}'`
users=`who | wc -l`
cas=`date +"%d.%m.%Y - %H:%M:%S"`
echo "<h1>Moje ip je: "$ip"</h1>" >> /home/student/Plocha/skripty/data
echo "<p>Přijato: "$down"</p>" >> /home/student/Plocha/skripty/data
echo "<p>Odesláno: "$up"</p>" >> /home/student/Plocha/skripty/data
echo "<p>Volné místo na disku: "$disk"B</p>" >> /home/student/Plocha/skripty/data
echo "<p>Právě je připojeno: "$users "uživatelů</p>" >> /home/student/Plocha/skripty/data
echo "<code>Datum: "$cas"</code>" >> /home/student/Plocha/skripty/data
echo "<br><br>" >> /home/student/Plocha/skripty/data
