//Ex:1.7
clc;
clear;
close;
W=10*1000;// radiated power in W
Rr=75;// radiation resistance in ohm
I=sqrt(W/Rr);// current in amp
printf("The current = %f Amp", I);