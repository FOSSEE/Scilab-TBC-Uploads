//Ex:1.2
clc;
clear;
close;
W=625*10^3;// power in W
r=30*10^3;// in m
Erms=(sqrt(90*W))/r;// the field strength in V/m
printf("The field strength = %d mV/meter", Erms*10^3);