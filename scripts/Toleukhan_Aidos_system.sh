#!/bin/bash

echo "=============================="
echo "Student Information"
echo "=============================="

cat ~/devops/toleukhan_aidos/Toleukhan_Aidos_info.txt

echo "=============================="
echo "System Information"
echo "=============================="

echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -s)"

echo "Disk Usage:"
df -h /

echo "Memory Usage:"
free -h

if [ -f ~/devops/toleukhan_aidos/Toleukhan_Aidos_info.txt ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi
echo "Application: Toleukhan_Aidos_DevOps"
