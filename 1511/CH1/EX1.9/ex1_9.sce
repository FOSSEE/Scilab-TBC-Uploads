// Example 1.9 page no-24
clear
clc

k=1.76*10^11 ///e/m in C/kg
eps=10^4
B=0.01

Xmax=2*eps*%pi/((B^2)*k)
printf("Xmax=%.3f cm",Xmax*100)
