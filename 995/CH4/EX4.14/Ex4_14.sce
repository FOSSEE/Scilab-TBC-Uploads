//Ex:4.14
clc;
clear;
close;
L=20*10^-3;
f=2000;
V=1.5;
r=100;
C=10*10^-9;
X_L=(2*%pi*f*L);
X_C=1/(2*%pi*f*C);
z=sqrt(r^2+(X_L-X_C)^2);
i=V/z;
v=i*r;
printf("Current supplied = %f mA",i);
printf("\nVoltage developed = %f V",v);