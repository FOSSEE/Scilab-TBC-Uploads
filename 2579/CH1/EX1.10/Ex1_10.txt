//Ex:1.10
clc;
clear;
close;
le=100;// effective height of antenna in m
Irms=100;// current in Amp
f=0.300;// frequency in MHz
r=10*1000;// distance in m
y=300/f;// in m
Erms=(120*%pi*Irms*le)/(y*r);// strength of electric field in V/m
Rr=160*(%pi^2)*(le/y)^2;// radiation resistance in ohm
W=Irms^2*Rr;// radiated power in Watt
printf("The strength of electric field = %f mV/m", Erms*1000);
printf("\n The radiated power = %f KW", W/1000);