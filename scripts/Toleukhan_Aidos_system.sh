#!/bin/bash

echo "=============================="
echo "Student Information"
echo "=============================="
echo ""
echo "Name: Aidos"
echo "Surname: Toleukhan"
echo "Group: IT2-2309"
echo "Student ID: 37599"
echo ""
echo "=============================="
echo "System Information"
echo "=============================="
echo ""
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -sr)"
echo "Disk Usage: $(df -h / | awk 'NR==2 {print $3 " used of " $2 " (" $5 ")"}')"
echo "Memory Usage: $(free -h | awk '/Mem:/ {print $3 " used of " $2}')"
echo ""

INFO_FILE="$HOME/devops/toleukhan_aidos/Toleukhan_Aidos_info.txt"

if [ -f "$INFO_FILE" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi
