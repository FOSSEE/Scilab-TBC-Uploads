//Ex:2.22
clc;
clear;
close;
E_o=8.85*10^-12;
E_r=4.5;
n=6;//no. of plates
d=0.2*10^-3;//in meter
A=20*10^-4;//in sq.meter
C={(E_o*E_r*(n-1)*A)/d}*10^11;
printf("Capacitance = %d pF",C);