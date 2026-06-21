#!/bin/bash
echo "--log monitoring--"
echo"analysing  $1"
echo ""
echo "Failed login attempts:"
grep "Failed password" $1 | wc -l
echo ""
echo "top 5 attacking attempts:"
grep "Failed password" $1 | sort | uniq -c | sort -rn | head -5
echo ""
echo "checking for brute force.."
grep "Failed password" $1 | awk '{print $11}' | sort | uniq -c | sort -rn | while read count ip; do
    if [ $count -gt 10 ]; then
       echo "Warning:Suspicious ip.....$ip"
    fi
done
echo ""

echo "Last 5 successful logins:"
grep "Accepted password\|Accepted publickey" | tail -5

echo ""
echo "--done--"
