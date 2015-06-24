//
clear
clc

pout=6
power_gain=80

pin=pout/power_gain

printf('The input power of the sigmal is %.1f mW',pin*1000)
