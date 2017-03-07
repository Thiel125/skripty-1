#!/bin/bash
cas=`date +"%d-%m_%H-%M-%S"`
cd /home/student/Plocha/skripty/
zip -r scherzyna_$cas.zip mojedata
scp scherzyna_$cas.zip student@192.168.10.91:/home/student/Plocha/skripty
