//Ex:4.13
clc;
clear;
close;
L=100*10^-3;
f=400;
C=(1/(4*%pi*%pi*f*f*L))*10^6;
printf("Capacitance required = %f uF",C);