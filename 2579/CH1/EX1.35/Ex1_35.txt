//Ex:1.35
clc;
clear;
close;
W=50*1000;// radiated power in W
r=90*1000;// distance in m
Erms=(sqrt(90*W))/r;// strength of electric field in V/m
printf("The strength of electric field = %f mV/m", Erms*1000);