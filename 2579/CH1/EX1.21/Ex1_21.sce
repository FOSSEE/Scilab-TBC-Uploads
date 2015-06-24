//Ex:1.21
clc;
clear;
close;
W=35*10^3;// power in Watts
r=60*10^3;// in m
Erms=(sqrt(90*W))/r;// field strength in mV/m
printf("The field strength = %f mV/m", Erms*1000);