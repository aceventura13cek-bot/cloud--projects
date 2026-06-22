#!/bin/bash
echo "------SYSTEM CHECK------"
echo ""
echo "DISK CHECK"
echo ""
disk=$(df / | tail -1 | awk '{print $5}' | tr -d '%')
if [ $disk -gt 80 ]; then
   echo"WARNING:High disk usage - $disk"
else
   echo"Disk usage is normal"
fi
echo ""
nginxx=$(systemctl is-active nginx)
echo "Nginx is $nginxx"
echo ""
echo "Current date and time"
date

