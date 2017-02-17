#!/bin/bash
echo "Cheš poslat všem zprávu: "$zprava
echo "(A)ano (N)ne"
read poslat
        if [ $poslat == "A" ]; then
		who | sort -u | while read radek 
		do
			uzivatel=`echo $radek | awk -F " " '{print $1 " " $2}'`
			text="Test"
			echo $text | write $uzivatel
		done
	else
echo "Ruším žádost"
fi
