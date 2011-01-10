#!/bin/sh

qlmanage -p "$@" &>/dev/null &
QL_PID=$!

echo "Press any key to return"
read -s -n 1

kill $QL_PID
