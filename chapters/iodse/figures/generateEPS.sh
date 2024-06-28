#!/bin/bash
for i in *.p; do
    [ -f "$i" ] || break
    gnuplot -e "load '$i'"
done 
