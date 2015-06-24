// Example 5.9, page no-314
clear
clc

Cd=0.98
g=9.8
h=900*10^-3
V=Cd*sqrt(2*g*h)
V=floor(V*100)
V=(V/100)
printf("V = %.2f m/sec",V)

