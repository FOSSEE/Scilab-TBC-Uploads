//Ex:4.11
clc;
clear;
close;
C=2*10^-6;
f=400;
V=115;
X_C=1/(2*%pi*f*C);
r=199;
z=sqrt(r^2+X_C^2);
I_s=V/z;
printf("Reactance = %f ohm",X_C);
printf("\n Current = %f A",I_s);