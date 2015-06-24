//Ex:1.23
clc;
clear;
close;
W=1*10^3;// power in Watts
r=10^3;// in m
Erms=(sqrt(30*W))/r;// field strength in mV/m
printf("The field strength = %f mV/m", Erms*1000);