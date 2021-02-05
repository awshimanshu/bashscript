Remove buffer or cache Ram Script
========================
#!/bin/bash

ram=2.0 ###Minimum Ram

free -mh > freeram.txt

freeram=$(perl -lane 'print $F[3] if $. == 2' freeram.txt | grep -Eo '[+-]?[0-9]+([.][0-9]+)?')

#freeram=$(cat ram.txt | grep -Eo '[+-]?[0-9]+([.][0-9]+)?')

st=$(echo "$freeram < $ram" | bc)
if [ $st -eq 1 ];
then
       sync ; echo 3 > /proc/sys/vm/drop_caches
Python3 /path/to/mailsent/script  ###### If ram clear######

else
                echo "No need to clear Ram "
Python3 /path/to/mailsent/script  ###### If ram Not clear######
        fi

        rm -rf freeram.txt
