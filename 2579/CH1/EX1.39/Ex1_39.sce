//Ex:1.39
clc;
clear;
close;
Pr=10*10^3;// power in Watts
I=18;// current in Amp
R=Pr/I^2;// radiation resistance of an antenna in ohm
printf("The radiation resistance of an antenna = %f ohm", R);