//Ex:1.5
clc;
clear;
close;
I=20;// current in amp
Rr=50;// radiation resistance in ohm
Wr=I^2*Rr;// radiated power in W
printf("The radiated power = %d W", Wr);