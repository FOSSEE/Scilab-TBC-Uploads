//Ex:1.8
clc;
clear;
close;
W=100*1000;// radiated power in W
r=100*1000;// distance in m
Erms=(sqrt(90*W))/r;// strength of electric field in V/m
printf("The strength of electric field = %f V/m", Erms);