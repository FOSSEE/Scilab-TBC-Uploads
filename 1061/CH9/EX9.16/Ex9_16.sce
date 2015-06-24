//Ex:9.16
clc;
clear;
close;
R=0.40;// Responsivity in A/W
m=100*10^-6;// incident flux in W/m-m
A=2;// area in m-m
Po=m*A;// incident power in W
Ip=R*Po;// photon current in A
printf("The photon current =%d uA", Ip*10^6);