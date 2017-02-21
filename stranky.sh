#!/bin/bash
vloz=`cat /home/student/Plocha/skripty/data`
echo '<html lang="cs"><head>' > /home/student/Plocha/skripty/index.html
echo '<meta charset="utf-8">' >> /home/student/Plocha/skripty/index.html
echo '<title>Status</title></head><body>' >> /home/student/Plocha/skripty/index.html
echo $vloz >> /home/student/Plocha/skripty/index.html
echo '</body></html>' >> /home/student/Plocha/skripty/index.html
