# Dobrý den

#!/bin/bash
echo "Kolik máš?: "
read VEK
if [ $VEK -le 14 ]; then
	echo "Jsi dítě!!"
elif [ $VEK -gt 14 ] && [ $VEK -lt 18 ]; then
	echo "Jsi mladistvý"
else
	echo "Jsi dospělý"
fi
