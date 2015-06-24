//Ex:1.11
clc;
clear;
close;
le=10;// effective height of antenna in m
Irms=50;// current in Amp
f=0.600;// frequency in MHz
y=300/f;// in m
Rr=160*(%pi^2)*(le/y)^2;// radiation resistance in ohm
W=Irms^2*Rr;// radiated power in Watt
printf("The radiated power = %f KW", W/1000);