//Ex:2.5
clc;
clear;
close;
dl_y=1/20;// the ratio of dl to y(wavelength)
Rr=80*(%pi^2)*(dl_y)^2;// radiation resistance in ohm
printf("The radiation resistance = %f ohm", Rr);