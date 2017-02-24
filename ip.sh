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
echo '<div style="border-bottom: 1px dotted red;"><h1 style="color: red; text-align: left;">Moje IP je: '$ip'</h1>' >> /home/student/Plocha/skripty/data
echo "<p>Přijato: "$down"</p>" >> /home/student/Plocha/skripty/data
echo "<p>Odesláno: "$up"</p>" >> /home/student/Plocha/skripty/data
echo "<p>Volné místo na disku: "$disk"B</p>" >> /home/student/Plocha/skripty/data
echo "<p>Právě je připojeno: "$users "uživatelů</p>" >> /home/student/Plocha/skripty/data
echo "<code>Datum: "$cas"</code>" >> /home/student/Plocha/skripty/data
echo '<br><br></div>' >> /home/student/Plocha/skripty/data
vloz=`cat /home/student/Plocha/skripty/data`
echo '<html lang="cs"><head>' > /var/www/index.html
echo '<meta charset="utf-8">' >> /var/www/index.html
echo '<title>Status</title></head><body>' >> /var/www/index.html
echo '<div style="font-family: arial, sans-serif; padding: 5px; max-width: 750px; margin: auto; text-align: center; border: 2px solid red; border-radius: 15px; color: white; background: black">' >> /var/www/index.html
echo $vloz >> /var/www/index.html
echo '</div></body></html>' >> /var/www/index.html

