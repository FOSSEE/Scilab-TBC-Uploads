//Ex:4.12
clc;
clear;
close;
L=150*10^-3;
f=400;
V=115;
X_L=(2*%pi*f*L);
r=250;
z=sqrt(r^2+X_L^2);
I_s=V/z;
printf("Reactance = %f ohm",X_L);
printf("\n Current = %f A",I_s)