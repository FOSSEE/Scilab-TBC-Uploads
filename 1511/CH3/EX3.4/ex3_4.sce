// Example 3.4 page no-157
clear
clc

Rl=5010 //ohm
idc=0.001
Vrms=idc*%pi*Rl/(2*sqrt(2))
printf("\nVrms = %.2f V",Vrms)
