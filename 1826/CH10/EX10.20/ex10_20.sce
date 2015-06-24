// Example 10.20, page no-282
clear
clc
I=200//A
H=1.5//Wb/m^2
n=8.4*10^28//electronsper m^3
d=1.0*10^-3 //m
e=1.6*10^-19//C
v=I*H/(n*d*e)
printf("The Hall potential difference appearance between the ship is %.0f µv",v*10^6)
