#!/bin/bash

echo -e "Kernel"
cat /etc/issue 
# echo -e "System"
# uname -nrpv
# echo
echo -e "CPU"
cat /proc/cpuinfo|grep name
echo
echo -e "RAM"
free -m
echo
echo -e "Disks"
df -h
echo
echo -e "Processes"
ps aux # acrux
echo
echo -e "Docker"
docker ps -a --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"
echo
echo Press Enter to see the real-time monitor...
read key
htop
