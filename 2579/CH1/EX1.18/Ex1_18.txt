//Ex:1.18
clc;
clear;
close;
I=10;// current in Amp
Wt=(10*I)^2/30;// power in Watt
Rt=Wt/I^2;// Radiation resistance in ohm
printf("The Radiation resistance = %f ohm", Rt);