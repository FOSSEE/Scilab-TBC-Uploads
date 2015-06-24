//Ex:1.13
clc;
clear;
close;
// Prad=n(pi/3)*(Io*dl/y)^2, where n=120pi & y is wavelength
// Prad=120*pi*(pi/3)*(100*y/16*y)
Prad=120*3.14*(3.14/3)*(100/16)^2;// power radiated in Watts
// Rr=80*pi*(y/16y)^2
Rr=80*3.14^2*(1/16)^2;// the radiation resistance in ohm
printf("The power radiated = %f watts", Prad);
printf("\n The radiation resistance = %f ohm", Rr);