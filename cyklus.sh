#!/bin/bash
cas=date +"Čas spuštění skriptu: %T"
echo $cas >> veky.txt
for (( i=1; i<=5; i++ ))
do
	echo $i. "Zadej svůj věk: "
	read vek
	echo "Tvůj věk je: "$vel "let."

	if [ $vek -lt 18 ] && [ $vek -ge 10 ]; then
		echo "Je ti mezi 10 až 17."
	elif [ $vek -lt 10 ]; then
		echo "Je ti pod 10"
	else
		echo "Je ti 18 a víc"
fi
echo $i." kolo: Věk je "$vek >>  veky.txt
done
