// Example 2.35 page no-125
clear
clc

eps=16/(36*%pi*10^9) //F/m
mup=1800
E=4*10^14
V=(eps*mup*E*10^-6)/2
sige=1/45
Vz=ceil(V)/sige
printf("V=%d V",Vz)
