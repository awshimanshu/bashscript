Disk space Bash script 
=====================
#!/bin/bash
Maxdiskusage=80

df -h | grep /dev/nvme0n1p1 > disk.txt
currentdiskusage=$(perl -lane 'print $F[4] if $. == 1' disk.txt  | grep -Eo '[+-]?[0-9]+([.][0-9]+)?')



stt=$(echo "$currentdiskusage > $Maxdiskusage" | bc)
if [ "$stt" -eq 1 ];
then
        echo "Disk space Less than 20%"
        python3 /root/lowdiskspace.py

else
        
        echo "Current Disk Usage is $currentdiskusage%"
         python3 /root/normaldiskspace.py
fi

=====================
