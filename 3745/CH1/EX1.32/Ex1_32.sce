// Ex 32 Page 375

clc;clear;close;
// Given
L=30;//H
C=10*10**-6;//F
RL=8*10**3;//ohm
f=50;//Hz

r=sqrt(2)/12/(2*%pi*f)**2/L/C*100;//%
Lc=2*RL/6/(2*%pi*f);//H
printf("ripple factor = %.1f percent",r)
printf("\n Critical inductance, Lc=%.1f H",Lc)
